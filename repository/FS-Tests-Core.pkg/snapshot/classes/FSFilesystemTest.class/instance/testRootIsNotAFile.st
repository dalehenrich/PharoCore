
!FSFilesystemTest methodsFor: 'tests'!
testRootIsNotAFile
	self deny: (filesystem isFile: FSPath root)! !
