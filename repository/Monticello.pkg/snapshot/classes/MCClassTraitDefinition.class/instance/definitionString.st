
!MCClassTraitDefinition methodsFor: 'accessing'!
definitionString
	^self baseTrait , ' classTrait
	uses: ' , self classTraitCompositionString.
! !
