
!SmalltalkImage methodsFor: 'saving'!
saveImageInFileNamed: aString
	| fullImageName previousFullImageName |
	fullImageName := (FileDirectory default fullNameFor: aString).
	(FileDirectory default directoryNamed:(FileDirectory dirPathFor: fullImageName )) assureExistence.
	previousFullImageName := self imageName.
	^self
		changeImageNameTo: fullImageName;
		closeSourceFiles;
		openSourceFiles;  "so SNAPSHOT appears in new changes file"
		snapshot: true andQuit: false! !
