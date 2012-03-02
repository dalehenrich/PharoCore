
!FileDialogWindow methodsFor: 'as yet unclassified'!
newFileList
	"Answer a new file list."
	
	^(self newMorphListFor: self
			list: #fileItems
			getSelected: #selectedFileIndex
			setSelected: #selectedFileIndex:
			help: nil)
		doubleClickSelector: #doubleClickFile;
		minWidth: 200! !
