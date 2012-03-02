
!FSFilesystemTest methodsFor: 'tests'!
testRootIsDirectory
	self assert: (filesystem isDirectory: FSPath root)! !
