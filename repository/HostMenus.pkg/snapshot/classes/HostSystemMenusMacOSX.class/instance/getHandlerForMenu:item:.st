
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
getHandlerForMenu: aMenuID item: anItem
	| menu menuItemHandler |
	
	menu := self menus at: aMenuID ifAbsentPut: [Dictionary new].
	menuItemHandler := menu at: anItem ifAbsentPut: [HostSystemMenusMenuItem menuString: ''].
	^menuItemHandler! !
