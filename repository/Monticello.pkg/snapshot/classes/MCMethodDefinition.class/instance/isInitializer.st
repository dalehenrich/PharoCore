
!MCMethodDefinition methodsFor: 'testing'!
isInitializer
	^ selector = #initialize and: [classIsMeta]
	! !
