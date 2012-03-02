
!StrikeFont class methodsFor: 'accessing'!
familyNames
	^ (TextSharedInformation select: [:each | each isKindOf: TextStyle]) keys asSortedCollection! !
