
!DateTest methodsFor: 'testing'!
testLeapNot
	self assert: (aDate addDays: 365) leap = 0
! !
