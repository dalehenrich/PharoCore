
!FlatMessageListBrowser methodsFor: 'display'!
open
	| win |
	win := StandardWindow new model: self.
	win title: self title.
	self addAllItems: win.
	win themeChanged.
	win openInWorld.
	self forceFirstSelection.
	self changed: #textToDisplay.
	^ win! !
