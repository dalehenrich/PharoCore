
!MCPackageLoader methodsFor: 'public'!
load
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useNewChangeSetDuring: [self basicLoad].
	MCMethodDefinition cachedDefinitions finalizeValues.! !
