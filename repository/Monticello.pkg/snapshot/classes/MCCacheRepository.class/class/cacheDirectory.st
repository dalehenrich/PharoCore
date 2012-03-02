
!MCCacheRepository class methodsFor: 'as yet unclassified'!
cacheDirectory
	^ (FileDirectory default directoryNamed: 'package-cache')
		assureExistence;
		yourself! !
