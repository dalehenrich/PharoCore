
!ToolDockingBarMorph methodsFor: 'as yet unclassified'!
updateColor
	"private - update the receiver's color"
	
	self autoGradient
		ifFalse: [^ self].
	self fillStyle: self normalFillStyle! !
