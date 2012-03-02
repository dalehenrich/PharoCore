
!FreeTypeFontProvider class methodsFor: 'startup'!
startUp: resuming
	(FreeTypeSettings updateFontsAtImageStartup and: [resuming])
		ifTrue:[self current updateFromSystem]! !
