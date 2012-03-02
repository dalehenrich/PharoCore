
!SystemProgressMorph methodsFor: 'initialize'!
updateColor: aMorph color: aColor intensity: anInteger 
	"update the apareance of aMorph"
	| fill |
	self theme preferGradientFill ifFalse: [^ self].
	fill := GradientFillStyle ramp: {0.0 -> Color white. 1 ->aColor}.
	fill radial: false;
		origin: aMorph topLeft;
		direction: 0 @ aMorph height.
	aMorph fillStyle: fill! !
