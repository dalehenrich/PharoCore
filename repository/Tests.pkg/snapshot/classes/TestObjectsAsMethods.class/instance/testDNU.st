
!TestObjectsAsMethods methodsFor: 'testing'!
testDNU 

	self should: [self foo] raise: MessageNotUnderstood! !
