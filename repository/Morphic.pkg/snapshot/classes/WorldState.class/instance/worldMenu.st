
!WorldState methodsFor: 'worldmenu building'!
worldMenu
	^ [self discoveredWorldMenu]
		on: Error
		do: [menuBuilder := nil.
			^ self fallbackWorldMenu] ! !
