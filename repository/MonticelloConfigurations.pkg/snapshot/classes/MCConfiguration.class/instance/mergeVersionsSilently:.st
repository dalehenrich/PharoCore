
!MCConfiguration methodsFor: 'private'!
mergeVersionsSilently: aCollection

	^self suppressMergeDialogWhile: [self mergeVersions: aCollection]! !
