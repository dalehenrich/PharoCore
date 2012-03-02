
!Morph methodsFor: 'layout-menu'!
changeClipLayoutCells
	self invalidRect: self fullBounds.
	self clipLayoutCells: self clipLayoutCells not.
	self invalidRect: self fullBounds.! !
