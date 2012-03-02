
!TraitComposition methodsFor: 'accessing'!
removeFromComposition: aTrait
	self remove:
		(self transformationOfTrait: aTrait)! !
