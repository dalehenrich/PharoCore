
!HaloMorph class methodsFor: 'halo theme'!
installHaloTheme: haloSpecificationsSelector
	^ CurrentHaloSpecifications := self allHaloSpecsFromArray: (self perform: haloSpecificationsSelector).
! !
