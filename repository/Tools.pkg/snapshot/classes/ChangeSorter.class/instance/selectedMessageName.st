
!ChangeSorter methodsFor: 'message list'!
selectedMessageName

	currentSelector ifNil: [^ nil].
	^ currentSelector asSymbol! !
