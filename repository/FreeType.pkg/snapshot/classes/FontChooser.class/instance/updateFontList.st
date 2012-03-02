
!FontChooser methodsFor: 'action'!
updateFontList
	FreeTypeFontProvider current updateFromSystem.
	self refreshFontList! !
