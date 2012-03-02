
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
cachedFileNames
	^cache == nil
		ifTrue: [#()]
		ifFalse: [cache keys]! !
