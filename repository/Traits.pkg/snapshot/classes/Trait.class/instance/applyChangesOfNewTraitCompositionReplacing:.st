
!Trait methodsFor: 'private'!
applyChangesOfNewTraitCompositionReplacing: oldComposition
	"Duplicated on Class"
	
	| changedSelectors |
	changedSelectors := super applyChangesOfNewTraitCompositionReplacing: oldComposition.
	self classSide
		noteNewBaseTraitCompositionApplied: self traitComposition.
	^ changedSelectors! !
