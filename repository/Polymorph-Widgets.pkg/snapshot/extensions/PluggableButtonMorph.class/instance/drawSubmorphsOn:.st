
!PluggableButtonMorph methodsFor: '*Polymorph-Widgets'!
drawSubmorphsOn: aCanvas 
	"Display submorphs back to front.
	Draw the focus here since we are using inset bounds
	for the focus rectangle."

	super drawSubmorphsOn: aCanvas.
	(self enabled not and: [self label isMorph and: [(self label respondsTo: #enabled:) not]])
		ifTrue: [aCanvas fillRectangle: self submorphBounds fillStyle: (Color white alpha: 0.5)].
	self hasKeyboardFocus ifTrue: [self drawKeyboardFocusOn: aCanvas]! !
