
!Gofer methodsFor: 'private'!
basicReferencesIn: aRepository
	^ [ aRepository goferReferences asSortedCollection asArray ] 
		on: GoferRepositoryError
		do: errorBlock! !
