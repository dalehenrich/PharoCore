
!DisplayScreen methodsFor: 'screen managing'!
fullscreen: aBoolean

	Display fullscreenMode: (LastScreenModeSelected := aBoolean).
	DisplayScreen checkForNewScreenSize.
	World restoreMorphicDisplay! !
