
!MatrixTransformMorph methodsFor: 'geometry etoy'!
rotationCenter: aPoint
	super rotationCenter: (self transform globalPointToLocal: bounds origin + (bounds extent * aPoint))! !
