
!SHParserST80 methodsFor: 'parse'!
parseArray
	[currentTokenFirst == $)]
		whileFalse: [self parseLiteralArrayElement].
	self scanPast: #arrayEnd! !
