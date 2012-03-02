
!ThemeSettings methodsFor: 'accessing'!
menuTitleBorderColor
	^ self flatMenu
		ifFalse: [#inset]
		ifTrue: [self derivedMenuColor muchDarker]! !
