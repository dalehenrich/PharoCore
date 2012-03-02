
!DateTest methodsFor: 'Tests'!
testAccessing

	self	
		assert: date day = 153;
		assert: date julianDayNumber = 2441836;
		assert: date leap = 0;
		assert: date monthIndex = 6;
		assert: date monthName = #June;
		assert: date weekday = #Saturday;
		assert: date weekdayIndex = 7;
		assert: date year = 1973.
! !
