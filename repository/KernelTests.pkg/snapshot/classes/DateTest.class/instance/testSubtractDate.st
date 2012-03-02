
!DateTest methodsFor: 'testing'!
testSubtractDate
	self assert: (aDate subtractDate:(aDate addDays: 30)) = -30.	
	self assert: (aDate subtractDate:(aDate subtractDays: 00)) = 0.	
	self assert: (aDate subtractDate:(aDate subtractDays: 30)) = 30.

! !
