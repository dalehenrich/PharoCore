
!RGMethodDefinitionTest methodsFor: 'testing'!
testAsPassive
	| newMethod |

	RGMethodDefinitionTest compile: 'foo	^ ''first version'''.
	newMethod := (RGMethodDefinitionTest >> #foo) asPassiveRingDefinition.
	self assert: newMethod isPassive.
	self assert: newMethod sourceCode = newMethod compiledMethod getSource.

	RGMethodDefinitionTest compile: 'foo	^ ''second version'''.
	self assert: newMethod sourceCode = 'foo	^ ''first version'''.		
	self assert: newMethod compiledMethod getSource = 'foo	^ ''second version'''.! !
