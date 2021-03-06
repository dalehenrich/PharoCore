
!Socket class methodsFor: 'examples'!
timeTestUDP
	"Socket timeTestUDP"

	| serverName serverAddr s |
	Transcript show: 'initializing network ... '.
	self initializeNetwork.
	Transcript
		show: 'ok';
		cr.
	serverName := UIManager default request: 'What is your time server?' initialAnswer: 'localhost'.
	serverName isEmptyOrNil
		ifTrue: [ 
			^ Transcript
				show: 'never mind';
				cr ].
	serverAddr := NetNameResolver addressForName: serverName timeout: 10.
	serverAddr isNil
		ifTrue: [ self error: 'Could not find the address for ' , serverName ].
	s := self newUDP.	"a 'random' port number will be allocated by the system"	"Send a packet to the daytime port and it will reply with the current date."
	Transcript
		show: '---------- Sending datagram from port ' , s port printString , ' ----------';
		cr.
	s sendData: '!!' toHost: serverAddr port: 13.	"13 is the daytime service"
	Transcript show: 'the time server reports: ' , s receiveData.
	s closeAndDestroy.
	Transcript
		show: '---------- Socket closed ----------';
		cr! !
