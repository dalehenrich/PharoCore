
!DateTest methodsFor: 'Tests'!
testPreviousNext
	| n p pt ps |
	n := date next.
	p := date previous.

	self
		assert: n year = 1973;
		assert: n dayOfYear = 154;
		assert: p year = 1973;
		assert: p dayOfYear = 152.

	pt := date previous: #Thursday.		"31 May 1973"
	self	
		assert: pt year = 1973;
		assert: pt dayOfYear = 151.

	ps := date previous: #Saturday.		" 26 May 1973"
	self	
		assert: ps year = 1973;
		assert: ps dayOfYear = (153-7).
! !
