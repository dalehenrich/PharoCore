
!WeekTest methodsFor: 'Running'!
tearDown

	super tearDown.
	Week startDay: restoredStartDay.
	week := nil.

! !
