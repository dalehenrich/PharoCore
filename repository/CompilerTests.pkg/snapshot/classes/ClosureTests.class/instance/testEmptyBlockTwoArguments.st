
!ClosureTests methodsFor: 'testing-empty'!
testEmptyBlockTwoArguments
	self
		assert: (self class evaluatorClass evaluate: '[ :a :b ] value: 1 value: 2') isNil
		description: 'Empty blocks in ST-80 should return nil'.
	self
		assert: (self class evaluatorClass evaluate: '[ :a :b | ] value: 1 value: 2') isNil
		description: 'Empty blocks in ST-80 should return nil'.
	self
		assert: (self class evaluatorClass evaluate: '[ :a :b | | t | ] value: 1 value: 2') isNil
		description: 'Empty blocks in ST-80 should return nil'! !
