
!HaloMorph methodsFor: 'handles'!
addScaleHandle: haloSpec
	target isFlexMorph ifTrue: 
		[(self addHandle: haloSpec
				on: #mouseDown send: #startScale:with: to: self)
				on: #mouseMove send: #doScale:with: to: self].
	"This or addGrowHandle:, but not both, will prevail at any one time"
! !
