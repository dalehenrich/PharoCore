
!FSResolutionRequest methodsFor: 'exceptionDescription'!
defaultAction
	| filedir ref |
	filedir := UIManager default chooseDirectory: 'Where is ', origin, '?'.
	ref := filedir ifNotNil: [FSFilesystem disk referenceTo: filedir fullName].
	self resume: ref! !
