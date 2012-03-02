
!UpdatingStringMorph methodsFor: 'event handling'!
wouldAcceptKeyboardFocus
	^ (self hasProperty: #okToTextEdit) or: [super wouldAcceptKeyboardFocus]! !
