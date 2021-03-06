
!MorphTreeTransformMorph methodsFor: 'drawing'!
drawSubmorphsOn: aCanvas
	submorphs ifEmpty: [^ self].
	aCanvas transformBy: transform
		clippingTo: (aCanvas clipRect intersect: (owner clippingBounds))
		during: [:myCanvas |  | top bottom |
			top := self topVisibleRowForCanvas: myCanvas.
			bottom := self bottomVisibleRowForCanvas: myCanvas startingAt: top.
			bottom 
				to: top
				by: -1			
				do: [:row | | m |
					m := submorphs basicAt: row.
					self drawRawColorOn: myCanvas forSubmorph: m.
					myCanvas fullDrawMorph: m] ]
		smoothing: smoothing.
	owner withTreeLines ifTrue: [owner drawLinesOn: aCanvas].
! !
