
!SmallDictionary methodsFor: 'accessing - values'!
at: key 
	"Answer the value associated with the key."

	^ self at: key ifAbsent: [self errorKeyNotFound: key]! !
