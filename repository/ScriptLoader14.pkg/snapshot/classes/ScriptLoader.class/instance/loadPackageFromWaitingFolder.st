
!ScriptLoader methodsFor: 'elementary steps'!
loadPackageFromWaitingFolder
	"self defaultMCWaitingFolder allFileNames"
	"self new loadPackageFromWaitingFolder"
	
	
	self waitingFolderMCZFiles do: [:name | | version |
		version := self class defaultMCWaitingFolder versionFromFileNamed: name.
		version load]! !