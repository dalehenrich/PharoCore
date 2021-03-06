
!MCWorkingCopy methodsFor: 'private'!
findSnapshotWithVersionInfo: aVersionInfo
	"when an ancestor inside the ancestor chain is not found, does not pass nil instead.
	With this change we can now browse history and delta between them without having to 
	have the complete history"

	^ aVersionInfo
		ifNil: [MCSnapshot empty]
		ifNotNil: [(self repositoryGroup versionWithInfo: aVersionInfo)
			ifNil: [MCSnapshot empty]
			ifNotNil: [:aVersion | aVersion snapshot]]
! !
