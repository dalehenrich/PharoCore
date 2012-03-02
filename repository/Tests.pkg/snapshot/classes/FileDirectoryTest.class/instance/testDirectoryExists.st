
!FileDirectoryTest methodsFor: 'existence tests'!
testDirectoryExists

	self assert: self assuredDirectory exists.
	self should: [self directory containingDirectory 
					directoryExists: self directoryName].

	self directory containingDirectory deleteDirectory: self directoryName.
	self shouldnt: [self directory containingDirectory 
						directoryExists: self directoryName]! !
