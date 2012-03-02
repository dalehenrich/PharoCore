
!MessageTrap methodsFor: 'message trap'!
cannotInterpret: aMessage
	^ aMessage lookupClass handleMessage: aMessage forProxy: self! !
