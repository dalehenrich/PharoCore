
!ClosureTests methodsFor: 'testing-empty'!
testEmptyBlockOneArgument
	self
		assert: (self class evaluatorClass evaluate: '[ :a ] value: 1') isNil
		description: 'Empty blocks in ST-80 should return nil'.
	self
		assert: (self class evaluatorClass evaluate: '[ :a | ] value: 1') isNil
		description: 'Empty blocks in ST-80 should return nil'.
	self
		assert: (self class evaluatorClass evaluate: '[ :a | | t | ] value: 1') isNil
		description: 'Empty blocks in ST-80 should return nil'! !
