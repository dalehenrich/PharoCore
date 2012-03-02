
!IndentingListItemMorph methodsFor: 'accessing'!
isSoleItem
	^self isFirstItem and: [ owner submorphs size = 1 ]! !
