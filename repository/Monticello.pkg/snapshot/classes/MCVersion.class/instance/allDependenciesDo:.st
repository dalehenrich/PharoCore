
!MCVersion methodsFor: 'enumerating'!
allDependenciesDo: aBlock
	self allDependenciesDo: aBlock ifUnresolved: [:ignored | true]! !
