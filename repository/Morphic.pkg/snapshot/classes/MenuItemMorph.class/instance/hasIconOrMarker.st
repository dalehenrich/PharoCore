
!MenuItemMorph methodsFor: 'accessing'!
hasIconOrMarker
	"Answer whether the receiver has an icon or a marker."
	^ self hasIcon or: [ submorphs isEmpty not ]! !
