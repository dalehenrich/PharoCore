
!TraitComposition methodsFor: 'private'!
addCompositionOnLeft: aTraitComposition
	self transformations do: [ :each | aTraitComposition add: each ].
	^ aTraitComposition! !
