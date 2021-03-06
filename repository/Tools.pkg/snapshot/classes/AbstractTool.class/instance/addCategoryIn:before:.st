
!AbstractTool methodsFor: 'class'!
addCategoryIn: aClass before: aCategory

	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"
	| labels reject lines oldIndex newName |
	
	labels := OrderedCollection new.
	reject := Set new.
	reject
		addAll: aClass organization categories;
		add: ClassOrganizer nullCategory;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	aClass allSuperclasses do: [:cls | | cats |
		cls = Object ifFalse: [
			cats := cls organization categories reject:
				 [:cat | reject includes: cat].
			cats isEmpty ifFalse: [
				lines add: labels size.
				labels addAll: cats asSortedCollection.
				reject addAll: cats ]]].
	
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: 'Add Category'.
	newName ifNil: [ ^ nil ].
	newName := newName asSymbol.

	aClass organization
		addCategory: newName
		before: aCategory.
	self selectedCategory: newName.
	
	^ newName! !
