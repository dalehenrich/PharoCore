
!DurationTest methodsFor: 'testing'!
testNegative
	self deny: aDuration negative.
	self assert: aDuration negated negative
! !