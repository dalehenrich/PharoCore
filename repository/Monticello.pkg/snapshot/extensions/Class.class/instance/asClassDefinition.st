
!Class methodsFor: '*Monticello'!
asClassDefinition
	^ MCClassDefinition
		name: self name
		superclassName: self superclass name
		traitComposition: self traitCompositionString
		classTraitComposition: self class traitCompositionString
		category: self category 
		instVarNames: self instVarNames
		classVarNames: self classVarNames
		poolDictionaryNames: self poolDictionaryNames
		classInstVarNames: self class instVarNames
		type: self typeOfClass
		comment: self organization classComment	 asString
		commentStamp: self organization commentStamp	! !
