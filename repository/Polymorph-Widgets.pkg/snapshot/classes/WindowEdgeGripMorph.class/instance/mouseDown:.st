
!WindowEdgeGripMorph methodsFor: 'as yet unclassified'!
mouseDown: anEvent
	"Activate the window if not currently so."
	
	(self bounds containsPoint: anEvent cursorPoint)
		ifTrue: [self window ifNotNil: [:w | w activate]].
	^super mouseDown: anEvent! !
