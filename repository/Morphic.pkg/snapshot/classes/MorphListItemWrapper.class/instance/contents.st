
!MorphListItemWrapper methodsFor: 'accessing'!
contents
	"Answer the receiver's contents"

	| tentative submorphs |
	tentative := item submorphs collect: [:each | each renderedMorph].
	submorphs :=  tentative reject: [:each | each isKindOf: HaloMorph].
	^ submorphs collect: [:each | self class with: each]! !
