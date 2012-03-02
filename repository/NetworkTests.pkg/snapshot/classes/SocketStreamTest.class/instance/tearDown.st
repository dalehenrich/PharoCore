
!SocketStreamTest methodsFor: 'setup'!
tearDown
	clientStream ifNotNil:[clientStream destroy].
	serverStream ifNotNil:[serverStream destroy].! !
