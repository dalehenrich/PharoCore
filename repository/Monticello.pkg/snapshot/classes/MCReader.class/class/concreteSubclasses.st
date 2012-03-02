
!MCReader class methodsFor: 'testing'!
concreteSubclasses
	^ self allSubclasses reject: [:c | c isAbstract]! !
