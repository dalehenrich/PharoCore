
!MCMcdReader methodsFor: 'as yet unclassified'!
patch
	^ patch ifNil: [self loadPatch]! !
