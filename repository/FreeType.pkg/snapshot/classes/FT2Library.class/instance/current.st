
!FT2Library methodsFor: 'private-primitives'!
current
	^[self primCurrentLibrary] on: Error do: [:e | nil]! !
