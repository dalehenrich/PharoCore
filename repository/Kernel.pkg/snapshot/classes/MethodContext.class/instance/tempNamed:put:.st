
!MethodContext methodsFor: 'accessing'!
tempNamed: aName put: anObject
	^self tempAt: (self tempNames indexOf: aName) put: anObject! !
