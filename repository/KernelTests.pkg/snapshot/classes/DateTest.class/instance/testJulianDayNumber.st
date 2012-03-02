
!DateTest methodsFor: 'testing'!
testJulianDayNumber
	self assert: aDate = (Date julianDayNumber: ((4713+2004)*365 +1323) ).  ! !
