
!DialogItemsChooserUI methodsFor: 'selectedList'!
hasSelectedSelections
	"Answer whether the selected list has selected items."

	^selectedSelectionList anySatisfy: [:selected | selected]! !
