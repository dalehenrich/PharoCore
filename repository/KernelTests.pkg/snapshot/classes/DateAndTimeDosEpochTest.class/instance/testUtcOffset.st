
!DateAndTimeDosEpochTest methodsFor: 'testing'!
testUtcOffset
     self assert: (aDateAndTime utcOffset: '0:12:00:00') =  '1980-01-01T12:00:00+12:00' asDateAndTime! !
