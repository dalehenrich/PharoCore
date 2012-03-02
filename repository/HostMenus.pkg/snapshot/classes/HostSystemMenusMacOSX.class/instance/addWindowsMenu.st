
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
addWindowsMenu
	
	| menu items |
	
	menu := self newMenu: 5 menuTitle: 'Windows'.
	items := self buildSubMenusFor: (World worldMenuAt: #Windows) items first subMenu..
	self appendMenu: menu menuItems: items.
	self insertMenu: menu beforeID: 0! !
