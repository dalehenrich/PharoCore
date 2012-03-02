
!MorphTreeListManager methodsFor: 'accessing'!
getSelectionIndexOf: aMorph
	^ aMorph ifNil: [0] ifNotNil: [aMorph index]! !
