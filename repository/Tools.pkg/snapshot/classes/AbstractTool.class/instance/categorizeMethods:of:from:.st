
!AbstractTool methodsFor: 'method'!
categorizeMethods: aCollection of: aClass from: aCategory
	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"
	
	| labels reject lines oldIndex newName |
	aCollection ifEmpty: [^ self].
	aClass ifNil: [^self].	
	labels := OrderedCollection new.
	labels
		addAll: aClass organization categories copy sort;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	lines add: labels size -1.
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: ('Change Protocol (current: ', aCategory, ')').
	newName ifNil: [ ^self ].
	newName := newName asSymbol.
	aCollection do: [:item | 
		item methodClass organization
					classify: item selector
					under: newName 
					suppressIfDefault: true ].! !