
!DateAndTimeTest methodsFor: 'tests'!
testAsDosTimeIndependentOfTimezone
	| datetimeWithOffset datetimeWithoutOffset |
	datetimeWithoutOffset := DateAndTime current offset: Duration zero.
	datetimeWithOffset := datetimeWithoutOffset offset: (Duration hours: 1).
	
	self assert: datetimeWithOffset asDosTime equals: datetimeWithoutOffset asDosTime! !
