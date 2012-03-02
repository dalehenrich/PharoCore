
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
addSystemMenu
	| menu items |
	menu := self newMenu: 6 menuTitle: 'System'.
	items := self buildSubMenusFor: (World worldMenuAt: #System) items first subMenu.
	self appendMenu: menu menuItems: items.
	self insertMenu: menu beforeID: 0! !
