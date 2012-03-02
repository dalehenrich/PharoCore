
!DateTest methodsFor: 'Tests'!
testComparing
	| d1 d2 d3 |
	d1 := self dateClass newDay: 2 month: #June year: 1973.
	d2 := self dateClass newDay: 97 year: 2003. 		"7 April 2003"
	d3 := self dateClass newDay: 250 year: 1865. 		"7 September 1865"

	self
		assert: date = d1;
		assert: date = date copy;
		assert: date hash = d1 hash.
	self 
		assert: date < d2;
		deny: date < d3.
! !
