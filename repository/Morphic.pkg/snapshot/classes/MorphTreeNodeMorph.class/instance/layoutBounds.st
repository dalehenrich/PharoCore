
!MorphTreeNodeMorph methodsFor: 'layout'!
layoutBounds
	"Return the bounds for laying out children of the receiver"

	| lb |
	
	lb := super layoutBounds.
	container ifNil: [ ^ lb ].
	^ lb withLeft: lb left + self spacerWidth
! !
