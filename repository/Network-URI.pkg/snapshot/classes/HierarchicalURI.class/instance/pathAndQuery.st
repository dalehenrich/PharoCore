
!HierarchicalURI methodsFor: 'accessing'!
pathAndQuery
	^query
		ifNil: [self path]
		ifNotNil: [self path , self query]! !
