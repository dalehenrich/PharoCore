
!MCSnapshotBrowser methodsFor: 'menus'!
classListMenu: aMenu 
	classSelection ifNil: [ ^aMenu ].

	super classListMenu: aMenu.

	aMenu
		addLine;
				add: ('Load class {1}' translated format: {classSelection})
				action: #loadClassSelection.
	^ aMenu! !
