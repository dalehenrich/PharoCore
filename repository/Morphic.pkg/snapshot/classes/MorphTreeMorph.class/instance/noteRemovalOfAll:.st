
!MorphTreeMorph methodsFor: 'updating'!
noteRemovalOfAll: aCollection
	scroller removeAllMorphsIn: aCollection.
	self adjustSubmorphPositions

! !
