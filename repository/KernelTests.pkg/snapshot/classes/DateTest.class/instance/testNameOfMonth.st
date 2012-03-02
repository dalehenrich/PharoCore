
!DateTest methodsFor: 'testing'!
testNameOfMonth
	self assert: (Date nameOfMonth: 5) = 'May'.	
	self assert: (Date nameOfMonth: 8) = 'August' ! !
