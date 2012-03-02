
!SHParserST80 methodsFor: 'token testing'!
isAssignment
	^ currentToken = ':='
		or: [currentToken = '_']! !
