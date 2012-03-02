
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
addToolsMenu
	| menu items |
	menu := self newMenu: 4 menuTitle: 'Tools'.
	items := self buildSubMenusFor: self openMenu.
	items removeLast.
	self appendMenu: menu menuItems: items.
	self insertMenu: menu beforeID: 4.! !
