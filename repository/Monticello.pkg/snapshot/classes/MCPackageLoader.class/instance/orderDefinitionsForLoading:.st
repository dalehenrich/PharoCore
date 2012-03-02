
!MCPackageLoader methodsFor: 'private'!
orderDefinitionsForLoading: aCollection
	^ (self sorterForItems: aCollection) orderedItems! !
