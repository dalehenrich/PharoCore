
!ServerDirectory methodsFor: 'testing'!
keepAlive
	keepAlive ifNil: [keepAlive := false].
	^keepAlive! !
