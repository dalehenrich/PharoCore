
!MCPackageLoader methodsFor: 'private'!
useNewChangeSetNamedLike: baseName during: aBlock
	^self useChangeSetNamed: (ChangeSet uniqueNameLike: baseName) during: aBlock! !
