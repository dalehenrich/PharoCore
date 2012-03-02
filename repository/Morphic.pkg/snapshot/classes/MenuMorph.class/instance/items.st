
!MenuMorph methodsFor: 'accessing'!
items

	^ submorphs select: [:m | m isKindOf: MenuItemMorph]
! !
