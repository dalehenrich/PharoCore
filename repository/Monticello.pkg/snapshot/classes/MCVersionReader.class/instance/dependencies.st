
!MCVersionReader methodsFor: 'accessing'!
dependencies
	dependencies ifNil: [self loadDependencies].
	^ dependencies! !
