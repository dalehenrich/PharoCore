
!YearMonthWeekTest methodsFor: 'running'!
tearDown
	Week startDay: restoredStartDay.
	DateAndTime localTimeZone: restoredTimeZone.! !
