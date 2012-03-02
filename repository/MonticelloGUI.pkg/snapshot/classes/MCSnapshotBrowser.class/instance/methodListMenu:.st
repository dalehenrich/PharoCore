
!MCSnapshotBrowser methodsFor: 'menus'!
methodListMenu: aMenu 
	super methodListMenu: aMenu.
	self selectedMessageName
		ifNotNil: [:msgName | aMenu addLine; add: 'Load method' translated action: #loadMethodSelection].
	^ aMenu! !
