
!FSFilesystem methodsFor: 'accessing'!
changeDirectory: aPath
	self workingDirectoryPath: (self resolve: aPath)! !
