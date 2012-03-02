
!String class methodsFor: 'accessing'!
typeTable
	TypeTable ifNil: [self initializeTypeTable].
	^ TypeTable! !
