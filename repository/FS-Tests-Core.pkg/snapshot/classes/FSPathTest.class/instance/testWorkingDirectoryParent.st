
!FSPathTest methodsFor: 'tests'!
testWorkingDirectoryParent
	| path |
	path := FSPath workingDirectory parent.
	self assert: path size = 1.
	self assert: (path at: 1) = '..'! !
