
!TextMorph methodsFor: 'containment'!
fillsOwner
	"Answer true if I fill my owner's shape."
	^container notNil and: [container fillsOwner]! !
