
!Socket methodsFor: 'primitives'!
primSocket: aHandle listenOn: portNumber backlogSize: backlog
	"Primitive. Set up the socket to listen on the given port.
	Will be used in conjunction with #accept only."
	<primitive: 'primitiveSocketListenWithOrWithoutBacklog' module: 'SocketPlugin'>
	self destroy. "Accept not supported so clean up"! !
