
!SUnitTest methodsFor: 'testing'!
testRanOnlyOnce

	self assert: hasRanOnce ~= true.
	hasRanOnce := true! !
