
!WindowEdgeGripMorph methodsFor: 'as yet unclassified'!
mouseMove: anEvent
	"Track the mouse for resizing."
	
	target ifNil: [^self].
	self theme settings fastDragging
		ifTrue: [target doFastWindowReframe: self edgeName] 
		ifFalse: [super mouseMove: anEvent]! !
