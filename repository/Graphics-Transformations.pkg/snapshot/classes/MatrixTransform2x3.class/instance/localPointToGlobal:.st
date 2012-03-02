
!MatrixTransform2x3 methodsFor: 'transforming points'!
localPointToGlobal: aPoint
	"Transform aPoint from local coordinates into global coordinates"
	<primitive: 'primitiveTransformPoint' module: 'Matrix2x3Plugin'>
	^(self transformPoint: aPoint) rounded! !
