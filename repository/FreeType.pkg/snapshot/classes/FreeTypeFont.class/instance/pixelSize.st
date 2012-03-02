
!FreeTypeFont methodsFor: 'measuring'!
pixelSize
	^pixelSize ifNil:[pixelSize := super pixelSize rounded]! !
