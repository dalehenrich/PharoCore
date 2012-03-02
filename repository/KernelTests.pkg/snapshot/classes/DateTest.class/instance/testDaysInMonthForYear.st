
!DateTest methodsFor: 'testing'!
testDaysInMonthForYear
	self assert: (Date daysInMonth: 'February' forYear: 2008)  = 29.	
	self assert: (Date daysInMonth: 'February' forYear: 2000)  = 29.	
	self assert: (Date daysInMonth: 'February' forYear: 2100)  = 28.	
	self assert: (Date daysInMonth: 'July' forYear: 2100)  = 31.	! !
