
!DockingBarMorph methodsFor: 'accessing'!
isHorizontal
	"Answer true if the receiver has a horizontal layout"
	^ self isAdheringToTop
		or: [self isAdheringToBottom]! !
