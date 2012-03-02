
ByteArray variableByteSubclass: #SocketAddress
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Kernel'!

!SocketAddress commentStamp: '<historical>' prior: 0!
I represent a socket (network) address consisting of a host internet address and a port number.  My contents are opaque and cannot be interpreted directly.  See the accessing protocol for methods that retrieve the information I contain.!
