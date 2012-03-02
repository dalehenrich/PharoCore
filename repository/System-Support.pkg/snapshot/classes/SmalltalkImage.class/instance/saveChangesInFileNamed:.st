
!SmalltalkImage methodsFor: 'saving'!
saveChangesInFileNamed: aString
	| fullChangesName |
	fullChangesName := (FileDirectory default fullNameFor: aString).
	(FileDirectory default directoryNamed:(FileDirectory dirPathFor: fullChangesName )) assureExistence.
	FileDirectory default 
		copyFileWithoutOverwriteConfirmationNamed: Smalltalk changesName 
		toFileNamed: fullChangesName.
	self setMacFileInfoOn: fullChangesName.! !
