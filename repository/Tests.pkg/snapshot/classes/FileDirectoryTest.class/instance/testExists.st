
!FileDirectoryTest methodsFor: 'existence tests'!
testExists

	self should: [FileDirectory default exists]
		description: 'Should know default directory exists.'.
	self should: [self assuredDirectory exists]
		description: 'Should know created directory exists.'.

	self directory containingDirectory deleteDirectory: self directoryName.
	self shouldnt: [(self directory containingDirectory directoryNamed: self directoryName) exists]
		description: 'Should know that recently deleted directory no longer exists.'.! !
