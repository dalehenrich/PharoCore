
!DurationTest methodsFor: 'testing'!
testNegated
	self assert: aDuration + aDuration negated = (Duration seconds: 0). 
! !
