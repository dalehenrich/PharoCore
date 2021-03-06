
!Socket methodsFor: 'datagrams'!
sendUDPData: aStringOrByteArray toHost: hostAddress port: portNumber
	"Send a UDP packet containing the given data to the specified host/port."
	| bytesToSend bytesSent count |

	bytesToSend := aStringOrByteArray size.
	bytesSent := 0.
	[bytesSent < bytesToSend] whileTrue: [
		(self waitForSendDoneFor: 20)
			ifFalse: [ConnectionTimedOut signal: 'send data timeout; data not sent'].
		count := self primSocket: socketHandle
			sendUDPData: aStringOrByteArray
			toHost: hostAddress
			port: portNumber
			startIndex: bytesSent + 1
			count: bytesToSend - bytesSent.
		bytesSent := bytesSent + count].

	^ bytesSent
! !
