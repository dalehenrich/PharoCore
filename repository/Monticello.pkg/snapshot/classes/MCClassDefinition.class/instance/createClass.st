
!MCClassDefinition methodsFor: 'installing'!
createClass
	| superClass class composition |
	superClass := Smalltalk globals at: superclassName.
	class := ClassBuilder new
		name: name
		inEnvironment: superClass environment
		subclassOf: superClass
		type: type
		instanceVariableNames: self instanceVariablesString
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: category.

	self traitComposition
		ifNotNil: [ composition := self class evaluatorClass evaluate: self traitComposition.
				  ((((composition isCollection and: [ ( composition includes: nil ) not])  
					or: [composition isKindOf: TraitComposition ])
						or: [composition isKindOf: Trait ])
							or: [composition isKindOf: TraitTransformation ])
					ifTrue: [ class setTraitComposition: composition asTraitComposition ] ].
	self classTraitComposition
		ifNotNil: [ composition := self class evaluatorClass evaluate: self classTraitComposition.
				  ((((composition isCollection and: [ ( composition includes: nil ) not])  
					or: [composition isKindOf: TraitComposition ])
						or: [composition isKindOf: Trait ])
							or: [composition isKindOf: TraitTransformation ])
					ifTrue: [ class class setTraitComposition: composition asTraitComposition ] ].
	^ class! !
