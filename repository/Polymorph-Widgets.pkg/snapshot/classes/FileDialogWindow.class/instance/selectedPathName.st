
!FileDialogWindow methodsFor: 'as yet unclassified'!
selectedPathName
	"Answer the name of the selected path."

	^(self selectedFileDirectory ifNil: [^nil])
		fullNameFor: (self selectedFileName ifNil: [^self selectedFileDirectory pathName])! !
