
!SimpleHierarchicalListMorph methodsFor: 'dropping/grabbing'!
resetPotentialDropMorph
	potentialDropMorph ifNotNil: [
		potentialDropMorph resetHighlightForDrop.
		potentialDropMorph := nil]
! !
