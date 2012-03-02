
!PseudoClass methodsFor: 'accessing'!
allSuperclasses
	^ (self realClass ifNil: [ ^#() ]) allSuperclasses! !
