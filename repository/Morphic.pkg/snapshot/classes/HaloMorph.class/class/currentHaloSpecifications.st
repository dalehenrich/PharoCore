
!HaloMorph class methodsFor: 'halo theme'!
currentHaloSpecifications
	^ CurrentHaloSpecifications ifNil: [self installHaloTheme: #iconicHaloSpecifications]
! !
