
!MCVersion methodsFor: 'accessing'!
completePackageSnapshot
	^ completePackageSnapshot 
		ifNil: [ completePackageSnapshot := self loadCompletePackageSnapshot]! !
