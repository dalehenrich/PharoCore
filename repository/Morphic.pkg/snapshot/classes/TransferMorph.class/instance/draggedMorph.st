
!TransferMorph methodsFor: 'accessing'!
draggedMorph
	draggedMorph ifNil: [self initDraggedMorph].
	^draggedMorph! !
