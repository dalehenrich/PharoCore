
!WorldState methodsFor: 'worldmenu building'!
worldMenuAt: anMenuItemName
	^ [self discoveredWorldMenuAt: anMenuItemName]
		on: Error
		do: [menuBuilder := nil.
			^ self fallbackWorldMenu] ! !
