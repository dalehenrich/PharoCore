
!PasteUpMorph methodsFor: 'gridding'!
gridModulus: newModulus

	self gridSpecPut: (self gridOrigin extent: newModulus).
	self changed! !
