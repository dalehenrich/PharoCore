
!DateAndTimeUnixEpochTest methodsFor: 'testing'!
testtimeZone
	self assert: aDateAndTime timeZoneName	= 'Universal Time'.
	self assert: aDateAndTime timeZoneAbbreviation	=  'UTC'

! !
