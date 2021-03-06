
!ZnSingleThreadedServer methodsFor: 'private'!
readRequest: stream
	"Read a request from stream.
	We add a virtual header containing the remote IP address of the client"

	| request |
	request := ZnRequest readFrom: stream.
	request headers 
		at: ZnConstants remoteAddressHeader
		put: (ZnNetworkingUtils ipAddressToString: stream socket remoteAddress).
	self logRequest: request.
	^ request! !
