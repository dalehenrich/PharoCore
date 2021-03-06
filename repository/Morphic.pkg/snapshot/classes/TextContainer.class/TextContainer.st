
Object subclass: #TextContainer
	instanceVariableNames: 'textMorph shadowForm vertProfile minWidth rectangleCache fillsOwner avoidsOcclusions'
	classVariableNames: 'OuterMargin'
	poolDictionaries: ''
	category: 'Morphic-Text Support'!

!TextContainer commentStamp: '<historical>' prior: 0!
A TextContainer models the shape of an ownerMorph, possibly occluded by one or more occludingMorphs, and scans this shape to provide a list of rectangles suitable for layout of text.  It does this by displaying the shadow of the ownerMorph in black, and any occludingMorphs in white, on its shadowForm.  It then scans horizontal strips of appropriate height to find unbroken intervals of black, greater than minWidth in extent.  Conputation of the rectangles is done on demand, and results are cached so that text can be redisplayed without having to recompute the rectangles.!
