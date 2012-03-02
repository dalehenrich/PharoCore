
!TTSampleFontMorph methodsFor: 'accessing'!
transform
	^transform ifNil:[self computeTransform].! !
