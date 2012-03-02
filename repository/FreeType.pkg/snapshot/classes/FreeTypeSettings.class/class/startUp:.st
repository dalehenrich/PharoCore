
!FreeTypeSettings class methodsFor: 'startup'!
startUp: resuming
	resuming 
		ifTrue:[
			self current 
				clearBitBltSubPixelAvailable;
				clearForceNonSubPixelCount]! !
