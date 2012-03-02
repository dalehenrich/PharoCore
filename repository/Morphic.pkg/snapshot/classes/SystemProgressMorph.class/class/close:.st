
!SystemProgressMorph class methodsFor: 'instance creation'!
close: aBlock
	UniqueInstance ifNotNil: [UniqueInstance close: aBlock]! !
