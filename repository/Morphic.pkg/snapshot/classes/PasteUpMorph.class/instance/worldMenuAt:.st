
!PasteUpMorph methodsFor: 'world menu'!
worldMenuAt: aMenuItemName
	^ worldState 
		ifNil: [owner worldMenuAt: aMenuItemName]
		ifNotNil: [worldState worldMenuAt: aMenuItemName]
! !
