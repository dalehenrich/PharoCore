
!Morph methodsFor: 'menu'!
addTitleForHaloMenu: aMenu 
	aMenu
		addTitle: self externalName
		icon: (self iconOrThumbnailOfSize: 28)! !
