
!BalloonRectangleMorph methodsFor: 'drawing'!
drawOn: aCanvas
	(color isKindOf: OrientedFillStyle) ifTrue:[
		color origin: bounds center.
		color direction: (bounds extent x * 0.7) @ 0.
		color normal: 0@(bounds extent y * 0.7).
	].
	(borderColor isKindOf: OrientedFillStyle) ifTrue:[
		borderColor origin: bounds topLeft.
		borderColor direction: (bounds extent x) @ 0.
		borderColor normal: 0@(bounds extent y).
	].
	aCanvas asBalloonCanvas
		drawRectangle: (bounds insetBy: borderWidth // 2)
		color: color
		borderWidth: borderWidth
		borderColor: borderColor.! !
