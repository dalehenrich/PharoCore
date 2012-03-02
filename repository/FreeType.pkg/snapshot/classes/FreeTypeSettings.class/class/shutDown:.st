
!FreeTypeSettings class methodsFor: 'shutdown'!
shutDown: quitting 
	self current clearBitBltSubPixelAvailable.
	self current clearForceNonSubPixelCount! !
