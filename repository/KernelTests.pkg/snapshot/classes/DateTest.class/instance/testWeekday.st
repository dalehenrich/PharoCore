
!DateTest methodsFor: 'testing'!
testWeekday
	self assert: aDate weekday = 'Friday'.	
	self assert: aDate weekdayIndex = 6. 
	self assert: (Date dayOfWeek: aDate weekday ) =6.
	self assert: (Date nameOfDay: 6 ) = 'Friday'	! !
