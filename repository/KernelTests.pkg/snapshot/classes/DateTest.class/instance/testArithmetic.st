
!DateTest methodsFor: 'Tests'!
testArithmetic
	| d |
	d := date addDays: 32.		"4 July 1973"

	self 
		assert: d year = 1973;
		assert: d monthIndex = 7;
		assert: d dayOfMonth = 4.
	self 
		assert: (d subtractDate: date) = 32;
		assert: (date subtractDate: d) = -32.
	self	 
		assert: (d subtractDays: 32) = date.
! !
