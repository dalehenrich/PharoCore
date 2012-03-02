
!MCStWriter methodsFor: 'visiting'!
visitTraitDefinition: definition
	self writeClassDefinition: definition.
	definition hasComment ifTrue: [self writeClassComment: definition].! !
