
!MCClassTraitDefinition methodsFor: '*Ring-Core-Kernel'!
asRingDefinition

	^(RGFactory current createMetatraitNamed: baseTrait)
		traitCompositionSource: self classTraitCompositionString;
		definitionSource: self definitionString;
		yourself! !
