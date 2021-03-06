
!MorphTreeNodeMorph methodsFor: 'drawing'!
drawCheckOn: aCanvas in: aRectangle

	| center offset dRect |
	center := aRectangle center.
	offset := ((self checkWidth) / 2.0) truncated.
	dRect := (center x - offset) @ (center y - offset) corner: (center x + offset) @ (center y + offset).
	self selected 
		ifTrue: [
			aCanvas 
				frameAndFillRectangle: dRect
				fillColor: Color gray 
				borderWidth: 1 
				borderColor: Color black]
		ifFalse: [	
			aCanvas 
				frameAndFillRectangle: dRect
				fillColor: Color white 
				borderWidth: 1 
				borderColor: Color black]! !
