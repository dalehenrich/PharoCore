
!FinderNode methodsFor: 'events handling'!
addInspectMenuItem: menu

	menu
		add: 'Inspect (i)' translated
		target: self
		selector: #inspectItem.! !
