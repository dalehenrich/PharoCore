
!Morph methodsFor: 'viewer'!
externalName
	^ self assureExtension externalName ifNil: [super externalName]! !
