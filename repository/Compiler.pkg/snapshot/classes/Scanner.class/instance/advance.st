
!Scanner methodsFor: 'expression types'!
advance

	| prevToken |
	prevToken := token.
	self scanToken.
	^prevToken! !
