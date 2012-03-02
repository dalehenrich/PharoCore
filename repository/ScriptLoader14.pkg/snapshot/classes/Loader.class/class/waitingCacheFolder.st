
!Loader class methodsFor: 'private'!
waitingCacheFolder
	^ (FileDirectory default directoryNamed: self packageToBeTestedFolderName)
		assureExistence;
		yourself

	! !
