
!DateAndTimeDosEpochTest methodsFor: 'testing'!
testAsNanoSeconds
	self assert: aDateAndTime asNanoSeconds =  0 asDuration asNanoSeconds
	
! !
