
!DateTest methodsFor: 'testing'!
testDaysInYear
	self assert: (Date daysInYear: 2008)  = 366.	
	self assert: (Date daysInYear: 2000)  = 366.	
	self assert: (Date daysInYear: 2100)  = 365	
! !
