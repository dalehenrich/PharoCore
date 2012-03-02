
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
getMenuItemModifiers: aMenuHandle item: aNumber
	^self buildModifers: (self primGetMenuItemModifiers: aMenuHandle item: aNumber)! !
