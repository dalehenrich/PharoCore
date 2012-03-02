
!Float methodsFor: 'truncation and round off'!
significand

	^ self timesTwoPower: (self exponent negated)! !
