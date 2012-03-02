
!FileDialogWindow methodsFor: 'as yet unclassified'!
hasParentDirectory
	"Answer whether the selected directory in the tree part has a parent."

	^(self selectedFileDirectory ifNil: [^false])
		containingDirectory pathName notEmpty! !
