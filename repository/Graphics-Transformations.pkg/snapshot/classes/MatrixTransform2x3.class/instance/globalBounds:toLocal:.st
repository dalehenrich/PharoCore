
!MatrixTransform2x3 methodsFor: 'transforming rects'!
globalBounds: srcRect toLocal: dstRect
	"Transform aRectangle from global coordinates into local coordinates"
	<primitive: 'primitiveInvertRectInto' module: 'Matrix2x3Plugin'>
	^super globalBoundsToLocal: srcRect! !
