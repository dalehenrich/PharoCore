
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
addHelpMenu
	| menu items |
	menu := self newMenu: 7 menuTitle: 'Help'.
	items := self buildSubMenusFor: (World worldMenuAt: #Help) items first subMenu.
	self appendMenu: menu menuItems: items.
	self insertMenu: menu beforeID: 0! !
