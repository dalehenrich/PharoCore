
!MorphTreeListManager methodsFor: 'selection accessing'!
selectedMorphList
	^ selectedMorphList ifNil: [selectedMorphList := LinkedList new]! !
