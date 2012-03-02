
!TimespanTest methodsFor: 'testing'!
testIncludes
	self assert: (aTimespan includes: jan01).
	self deny: (aTimespan includes: jan08)
! !
