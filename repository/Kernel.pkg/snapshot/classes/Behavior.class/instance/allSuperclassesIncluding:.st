
!Behavior methodsFor: 'accessing class hierarchy'!
allSuperclassesIncluding: aClass
	"Answer an OrderedCollection of the receiver's and the receiver's  
	ancestor's superclasses up to aClass included. The first element is the receiver's immediate  
	superclass up to aClass included."
	| temp |
	^ superclass == aClass
		ifTrue: [ OrderedCollection with: aClass]
		ifFalse: [temp := superclass allSuperclassesIncluding: aClass.
			temp addFirst: superclass.
			temp]! !
