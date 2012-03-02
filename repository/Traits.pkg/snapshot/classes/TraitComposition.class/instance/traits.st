
!TraitComposition methodsFor: 'accessing'!
traits
	^self transformations collect: [:each |
		each trait]! !
