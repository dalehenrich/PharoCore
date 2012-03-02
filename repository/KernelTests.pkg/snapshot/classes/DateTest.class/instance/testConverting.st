
!DateTest methodsFor: 'Tests'!
testConverting

	self 
		assert: date asDate = date;
		assert: '2 June 1973' asDate = date;
		assert: date asSeconds = 2285280000.

	date dayMonthYearDo: [ :d :m :y | self assert: d = 2; assert: m = 6; assert: y = 1973 ].! !
