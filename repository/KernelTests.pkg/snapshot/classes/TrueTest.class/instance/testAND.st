
!TrueTest methodsFor: 'testing'!
testAND

	self assert: (true & true).
	self deny: (true & false).! !
