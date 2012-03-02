
!FSPath methodsFor: 'printing'!
printWithDelimiter: aCharacter
	^ String streamContents: [:out | self printOn: out delimiter: aCharacter]! !
