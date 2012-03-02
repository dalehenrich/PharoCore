
!ObjectTest methodsFor: 'assertions-halt'!
shouldHaltWhen: aBlock

	self should: aBlock raise: Halt.! !
