
!MCRepositoryInspector methodsFor: 'as yet unclassified'!
version
	^ version ifNil: [version := repository versionWithInfo: selectedVersion]! !
