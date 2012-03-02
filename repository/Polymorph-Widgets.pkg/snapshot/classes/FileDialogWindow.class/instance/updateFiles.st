
!FileDialogWindow methodsFor: 'as yet unclassified'!
updateFiles
	"Notify that the files have changed."

	self
		changed: #files;
		changed: #fileItems! !
