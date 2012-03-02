
!MCFileBasedRepository methodsFor: 'as yet unclassified'!
cacheAllFileNamesDuring: aBlock
	allFileNames := self allFileNames.
	^ aBlock ensure: [allFileNames := nil]! !
