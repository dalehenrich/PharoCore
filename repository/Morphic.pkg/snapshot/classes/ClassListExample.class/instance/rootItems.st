
!ClassListExample methodsFor: 'as yet unclassified'!
rootItems
	^ self rootClass allSubclasses asArray sort: [:a :b | a name < b name ]! !
