
!DateAndTimeEpochTest methodsFor: 'testing'!
testOffset
	self assert: aDateAndTime offset =  '0:00:00:00' asDuration.
     self assert: (aDateAndTime offset: '0:12:00:00') =  '1901-01-01T00:00:00+12:00' asDateAndTime! !
