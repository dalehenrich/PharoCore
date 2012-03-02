
!TraitComposition class methodsFor: 'instance creation'!
with: aTraitTransformation with: anotherTraitTransformation
	^self new
		add: aTraitTransformation;
		add: anotherTraitTransformation;
		yourself! !
