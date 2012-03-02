
!DateTest methodsFor: 'testing'!
testDayMonthYearDo
	self assert: (aDate dayMonthYearDo: [:day :month :year | day asString , month asString, year asString]) = '2312004'
! !
