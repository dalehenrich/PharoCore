
!ShortRunArrayTest methodsFor: 'testing'!
testValueAtRun

	self assert: 1 equals: (shortRunArray valueAtRun: 1).
	self assert: 2 equals: (shortRunArray valueAtRun: 2).
	self assert: 3 equals: (shortRunArray valueAtRun: 3).
	self assert: 1 equals: (shortRunArray valueAtRun: 4).
	self assert: 10 equals: (shortRunArray valueAtRun: 5).! !
