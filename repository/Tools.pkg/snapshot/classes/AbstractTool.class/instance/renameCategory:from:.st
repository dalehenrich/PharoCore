
!AbstractTool methodsFor: 'category'!
renameCategory: aCategory from: aClass
	"Prompt for a new category name and add it before the
	current selection, or at the end if no current selection"
	
	| oldIndex oldName newName |
	aClass ifNil: [^ nil].
	aCategory ifNil: [^ nil].
	oldName := aCategory.
	newName := UIManager default
		request: 'Please type new category name'
		initialAnswer: oldName.
	newName isEmptyOrNil
		ifTrue: [^ nil ]
		ifFalse: [newName := newName asSymbol].
	newName = oldName ifTrue: [^ nil ].
	aClass organization
		renameCategory: oldName
		toBe: newName.
	^ newName! !
