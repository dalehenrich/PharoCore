
!MCTraitParser methodsFor: 'as yet unclassified'!
addDefinitionsTo: aCollection
	| tokens  definition traitCompositionString |
	tokens := Scanner new scanTokens: source.
	traitCompositionString := (source readStream
		match: 'uses:';
		upToAll: 'category:') trimBoth.
	definition := MCTraitDefinition
		name: (tokens at: 3) 
		traitComposition: traitCompositionString
		category:  tokens last
		comment:  ''  
		commentStamp:   ''.
	aCollection add: definition.! !
