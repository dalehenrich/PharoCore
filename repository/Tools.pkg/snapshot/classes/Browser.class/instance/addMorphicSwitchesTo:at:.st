
!Browser methodsFor: 'initialization'!
addMorphicSwitchesTo: window at: aLayoutFrame

	window 
		addMorph: self buildMorphicSwitches
		fullFrame: aLayoutFrame.

! !
