
!FontChooserMorph methodsFor: 'actions'!
updateFontList
	model updateFontList.
	self triggerEvent: #fontsUpdated.! !
