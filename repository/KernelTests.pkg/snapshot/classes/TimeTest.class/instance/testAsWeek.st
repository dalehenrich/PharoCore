
!TimeTest methodsFor: 'testing'!
testAsWeek
	self assert: aTime asWeek = (DateAndTime current midnight + aTime) asWeek
! !
