
!MCSnapshotBrowser methodsFor: 'listing'!
methodList
	^ self visibleMethods collect: [:ea | ea selector]! !
