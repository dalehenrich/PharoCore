
!MenuMorph methodsFor: 'control'!
activeSubmenu: aSubmenu 
	activeSubMenu
		ifNotNil: [activeSubMenu delete].
	activeSubMenu := aSubmenu.
	aSubmenu
		ifNotNil: [activeSubMenu activatedFromDockingBar: nil]! !
