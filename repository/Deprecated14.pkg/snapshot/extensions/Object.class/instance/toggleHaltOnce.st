
!Object methodsFor: '*deprecated14'!
toggleHaltOnce

	self deprecated: 'See Halt for new API' on: '8/29/2011' in: '1.4'.
	Halt isHaltOnceEnabled
		ifTrue: [Halt disableHaltOnce]
		ifFalse: [Halt enableHaltOnce]! !
