
!FileDirectoryTest methodsFor: 'existence tests'!
testDirectoryExistsWhenLikeNamedFileExists
	
	[ | testFileName |testFileName := self assuredDirectory fullNameFor: 'zDirExistsTest.testing'.
	(FileStream newFileNamed: testFileName) close.

	self should: [FileStream isAFileNamed: testFileName].
	self shouldnt: [(FileDirectory on: testFileName) exists]]
	ensure: [self assuredDirectory deleteFileNamed: 'zDirExistsTest.testing']

! !
