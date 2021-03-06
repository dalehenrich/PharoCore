
!FlatMessageListBrowser methodsFor: 'private'!
format: aString

	| list size result |
	size := 0.
	list := aString subStrings: String cr.
	list do: [:line || addedCharacter tempSize|
		addedCharacter := ''.
		line first == $- ifTrue: [addedCharacter := '	'].
		tempSize := (addedCharacter, line) size.
		(tempSize > size) ifTrue: [size := tempSize]]! !
