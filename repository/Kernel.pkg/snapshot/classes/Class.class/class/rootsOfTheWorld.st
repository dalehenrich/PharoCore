
!Class class methodsFor: 'inquiries'!
rootsOfTheWorld
	"return all classes that have a nil superclass"
	
	^(Smalltalk globals select: [:each | each isBehavior and: [each superclass isNil]]) asOrderedCollection! !
