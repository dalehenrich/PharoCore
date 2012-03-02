
!MorphTreeMorph methodsFor: 'updating'!
innerWidgetChanged
	self setScrollDeltas.
	self updateColumnMorphsWidth.
	self adjustSubmorphPositions.
! !
