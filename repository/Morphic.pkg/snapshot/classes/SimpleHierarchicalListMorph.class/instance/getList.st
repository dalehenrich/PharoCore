
!SimpleHierarchicalListMorph methodsFor: 'model access'!
getList 
	"Answer the list to be displayed."

	^(model perform: (getListSelector ifNil: [^#()])) ifNil: [#()]

! !