
!FileDialogWindow methodsFor: 'as yet unclassified'!
updateSelectedDirectory
	"Notify that the selected directory has changed."

	self
		changed: #selectedDirectory;
		changed: #selectedFileDirectory;
		changed: #selectedPathName;
		changed: #hasParentDirectory! !
