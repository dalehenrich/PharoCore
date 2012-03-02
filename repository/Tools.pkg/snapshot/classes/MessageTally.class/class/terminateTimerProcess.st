
!MessageTally class methodsFor: 'private'!
terminateTimerProcess

	Timer ifNotNil: [ Timer terminate ].
	Timer := nil! !
