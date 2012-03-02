
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
versionInfo
	^ versionInfo ifNil: [versionInfo := repository versionInfoFromFileNamed: selectedVersion]! !
