
!ObjectExplorer methodsFor: 'accessing'!
parentObject
	currentSelection ifNil: [ ^nil ].
	currentSelection parent ifNil: [ ^rootObject ].
	^currentSelection parent withoutListWrapper! !