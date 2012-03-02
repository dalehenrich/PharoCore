
!SocketStream methodsFor: 'testing'!
ifStale: aBlock
	self isConnected
		ifFalse: aBlock! !
