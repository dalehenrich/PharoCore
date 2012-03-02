
!MCCacheRepository class methodsFor: 'as yet unclassified'!
checkCacheDirectory
	default notNil and: [default directory exists ifFalse: [default := nil]]! !
