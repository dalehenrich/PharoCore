
!ObjectTest methodsFor: 'assertions-halt'!
shouldntHaltWhen: aBlock

	self shouldnt: aBlock raise: Halt.! !
