
!TimespanTest methodsFor: 'testing'!
testPlus
	self assert: aTimespan + aWeek = aDisjointTimespan.
	self assert: anOverlappingTimespan + aDay = aTimespan.
! !
