
!TimespanTest methodsFor: 'testing'!
testUnionWithSelf
	self assert: (aTimespan union: aTimespan) = aTimespan
	! !
