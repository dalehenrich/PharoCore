
!DateTest methodsFor: 'testing'!
testIndexOfMonth
	self assert: (Date indexOfMonth: 'January')  = 1.	
	self assert: (Date indexOfMonth: 'December')  = 12.	! !
