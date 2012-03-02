
!WorldState methodsFor: 'worldmenu building'!
resetWorldMenu
	menuBuilder 
		ifNotNil: [menuBuilder reset.
			menuBuilder := nil]! !
