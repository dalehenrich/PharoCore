
!FileDialogWindow methodsFor: 'as yet unclassified'!
selectedFileName
	"Answer the name of the selected file."

	^(self selectedFileEntry ifNil: [^nil]) name! !
