
!TimespanTest methodsFor: 'Running'!
tearDown
	DateAndTime localTimeZone: localTimeZoneToRestore.
	timespan := nil
! !
