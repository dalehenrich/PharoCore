
!TTCompositeGlyph methodsFor: 'accessing'!
contours
	^contours ifNil:[contours := self computeContours]! !
