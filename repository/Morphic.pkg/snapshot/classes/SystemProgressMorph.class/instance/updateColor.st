
!SystemProgressMorph methodsFor: 'initialize'!
updateColor
	"update the apareance of aMorph"
	self theme  preferGradientFill ifFalse: [^ self].
	self fillStyle: (self theme progressFillStyleFor: self)! !
