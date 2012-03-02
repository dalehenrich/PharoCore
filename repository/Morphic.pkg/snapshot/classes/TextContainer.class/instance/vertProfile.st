
!TextContainer methodsFor: 'private'!
vertProfile
	vertProfile ifNil: [self computeShadow].
	^ vertProfile! !
