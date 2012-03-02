
!ZnNetworkingUtils methodsFor: 'accessing'!
socketStreamClass
	^ socketStreamClass ifNil: [ socketStreamClass := SocketStream ]! !
