
!MCRepositoryGroup methodsFor: 'as yet unclassified'!
includesVersionNamed: aString
	self repositoriesDo: [:ea | (ea includesVersionNamed: aString) ifTrue: [^ true]].
	^ false	! !
