
!TimespanTest methodsFor: 'testing'!
testLessThan
	self assert: aTimespan  < aDisjointTimespan.
	self deny: anIncludedTimespan < aTimespan
	! !