
!DateTest methodsFor: 'testing'!
testAddDays
	self assert: (aDate addDays: 00) yyyymmdd =  '2004-01-23'.	
	self assert: (aDate addDays: 30) yyyymmdd =  '2004-02-22'.
	self assert: (aDate addDays: 60) yyyymmdd =  '2004-03-23'.
	self assert: (aDate addDays: 90) yyyymmdd =  '2004-04-22'.
	self assert: (aDate addDays:120) yyyymmdd =  '2004-05-22'! !
