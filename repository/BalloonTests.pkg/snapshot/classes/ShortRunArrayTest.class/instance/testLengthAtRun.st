
!ShortRunArrayTest methodsFor: 'testing'!
testLengthAtRun

	self assert: 3 equals: (shortRunArray lengthAtRun: 1).
	self assert: 1 equals: (shortRunArray lengthAtRun: 2).
	self assert: 2 equals: (shortRunArray lengthAtRun: 3).
	self assert: 2 equals: (shortRunArray lengthAtRun: 4).
	self assert: 7 equals: (shortRunArray lengthAtRun: 5).! !
