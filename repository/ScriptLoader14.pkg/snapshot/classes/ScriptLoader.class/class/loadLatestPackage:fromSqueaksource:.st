
!ScriptLoader class methodsFor: 'private'!
loadLatestPackage: aString fromSqueaksource: aDirectoryName
	" self loadLatestPackage: 'ScriptLoader' fromSqueaksource: 'Pharo' "

	self loadLatestPackage: aString from: self rootURLString, aDirectoryName
	! !
