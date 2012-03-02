
!TestURI methodsFor: 'running file'!
testDirectoryRoot

	| rootDir uriRoot uriDir |
	rootDir := FileDirectory root.
	uriRoot := 'file:///' asURI.
	self assert: uriRoot isAbsolute.
	uriDir := FileDirectory uri: uriRoot.
	self assert: (rootDir fullName = uriDir fullName)! !
