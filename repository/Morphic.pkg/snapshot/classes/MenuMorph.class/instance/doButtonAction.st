
!MenuMorph methodsFor: 'menu'!
doButtonAction
	"Do the receiver's inherent button action.  Makes sense for the kind of MenuMorph that is a wrapper for a single menu-item -- pass it on the the item"

	self hasItems ifTrue: [self menuItems first doButtonAction]! !
