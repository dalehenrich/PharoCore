
!DateTest methodsFor: 'testing'!
testSubtractDays
	self assert: (aDate subtractDays: 00) yyyymmdd =  '2004-01-23'.	
	self assert: (aDate subtractDays: 30) yyyymmdd =  '2003-12-24'.
	self assert: (aDate subtractDays: 60) yyyymmdd =  '2003-11-24'
! !
