
!MorphTreeModel class methodsFor: 'as yet unclassified'!
itemsList: itemsList itemsHeaderName: aName wrapBlockOrSelector: wrapBlockOrSelector

	^ self new
		wrapBlockOrSelector: wrapBlockOrSelector;
		rootItems: itemsList;
		headerLabel: aName;
		yourself! !
