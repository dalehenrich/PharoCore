
!Morph methodsFor: 'geometry'!
positionSubmorphs
	self submorphsDo:
		[:aMorph | aMorph snapToEdgeIfAppropriate]! !
