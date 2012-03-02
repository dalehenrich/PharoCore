
!Trait methodsFor: '*Monticello'!
classDefinitions
	| definitions |
	definitions := OrderedCollection with: self asClassDefinition.
	(self hasClassTrait
		and: [self classTrait hasTraitComposition
				and: [self classTrait traitComposition isEmpty not]])
					ifTrue: [definitions add: self classTrait asMCDefinition].
	^definitions asArray! !
