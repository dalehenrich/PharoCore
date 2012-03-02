
!FileList methodsFor: 'volume list and pattern'!
veryDeepFixupWith: deepCopier
	super veryDeepFixupWith: deepCopier.
	volumeListIndex := 1.
	self directory: FSFilesystem disk workingDirectory.
	self updateFileList! !
