
!HierarchyBrowser methodsFor: 'initialization'!
classListIndex: newIndex
	"Cause system organization to reflect appropriate category"
	| newClassName ind |
	newIndex ~= 0 ifTrue:
		[newClassName := (classList at: newIndex) copyWithout: $ .
		systemCategoryListIndex :=
			systemOrganizer numberOfCategoryOfElement: newClassName].
	ind := super classListIndex: newIndex.
	self changed: #systemCategorySingleton.
	^ ind! !
