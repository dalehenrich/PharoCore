
!FileDirectoryTest methodsFor: 'create/delete tests'!
deleteDirectory
	
	(self directory exists) ifTrue:
		[self directory containingDirectory deleteDirectory: self directoryName]! !
