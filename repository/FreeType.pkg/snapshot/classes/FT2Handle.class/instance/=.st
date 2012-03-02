
!FT2Handle methodsFor: 'comparing'!
= anObject
	^ (self class == anObject class) and: [ handle = anObject handle ]! !
