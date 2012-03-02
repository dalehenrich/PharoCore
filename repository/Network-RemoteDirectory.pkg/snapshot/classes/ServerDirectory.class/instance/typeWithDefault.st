
!ServerDirectory methodsFor: 'accessing'!
typeWithDefault

	^ type ifNil: [type := #ftp]! !
