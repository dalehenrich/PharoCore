
!MCRepository class methodsFor: 'as yet unclassified'!
allConcreteSubclasses
	^ self withAllSubclasses reject: [:ea | ea isAbstract]! !
