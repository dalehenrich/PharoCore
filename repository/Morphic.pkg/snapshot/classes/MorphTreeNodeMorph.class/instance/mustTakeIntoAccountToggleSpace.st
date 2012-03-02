
!MorphTreeNodeMorph methodsFor: 'testing'!
mustTakeIntoAccountToggleSpace
	^ indentLevel > 0 or: [	container hasToggleAtRoot]! !
