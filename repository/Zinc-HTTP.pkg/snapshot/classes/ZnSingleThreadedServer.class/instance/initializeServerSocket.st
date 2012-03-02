
!ZnSingleThreadedServer methodsFor: 'private'!
initializeServerSocket
	"Set up a new server socket and listen on it"
	
	self log debug: 'Initializing server socket'.
	serverSocket := ZnNetworkingUtils serverSocketOn: port.! !
