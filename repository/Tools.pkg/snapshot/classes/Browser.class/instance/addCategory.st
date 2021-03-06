
!Browser methodsFor: 'message category functions'!
addCategory
	"Present a choice of categories or prompt for a new category name and add it before the current selection, or at the end if no current selection"
	| labels reject lines oldIndex newName |
	self okToChange ifFalse: [^ self].
	classListIndex = 0 ifTrue: [^ self].
	labels := OrderedCollection new.
	reject := Set new.
	reject
		addAll: self selectedClassOrMetaClass organization categories;
		add: ClassOrganizer nullCategory;
		add: ClassOrganizer default.
	lines := OrderedCollection new.
	self selectedClassOrMetaClass allSuperclasses do: [:cls | | cats |
		cls = Object ifFalse: [
			cats := cls organization categories reject:
				 [:cat | reject includes: cat].
			cats isEmpty ifFalse: [
				lines add: labels size.
				labels addAll: cats asSortedCollection.
				reject addAll: cats ] ] ].
	
	newName := UIManager default chooseOrRequestFrom: labels lines: lines title: 'Add Category'.
	newName ifNil: [ ^self ].
	newName := newName asSymbol.
	
	oldIndex := messageCategoryListIndex.
	self classOrMetaClassOrganizer
		addCategory: newName
		before: (messageCategoryListIndex = 0
				ifTrue: [nil]
				ifFalse: [self selectedMessageCategoryName]).
	self changed: #messageCategoryList.
	self messageCategoryListIndex:
		(oldIndex = 0
			ifTrue: [self classOrMetaClassOrganizer categories size + 1]
			ifFalse: [oldIndex]).
	self changed: #messageCategoryList.
 ! !
