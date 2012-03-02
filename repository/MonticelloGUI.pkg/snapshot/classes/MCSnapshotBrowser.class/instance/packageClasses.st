
!MCSnapshotBrowser methodsFor: 'accessing'!
packageClasses
	^ items select: [:ea | ea isClassDefinition]! !
