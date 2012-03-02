
!FileDialogWindow methodsFor: 'as yet unclassified'!
selectedDirectoryName
	"Answer the name of the selected directory."

	^(self selectedFileDirectory ifNil: [^nil]) name! !
