
!DateAndTimeUnixEpochTest methodsFor: 'testing'!
testTicks
	self assert: aDateAndTime ticks =  (DateAndTime julianDayNumber: 2440588) ticks.
	self assert: aDateAndTime ticks = #(2440588 0 0)! !
