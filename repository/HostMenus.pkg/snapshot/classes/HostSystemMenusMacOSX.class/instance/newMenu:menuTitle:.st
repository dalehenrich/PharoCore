
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
newMenu: menuID menuTitle: menuTitle
	| str255 |
	
	str255 := self convertToStr255: menuTitle.
 	^self primNewMenu: menuID menuTitle: str255! !
