
!SHParserST80 methodsFor: 'parse'!
parseStatement
	currentTokenFirst == $^
		ifTrue: [self scanPast: #return].
	self parseExpression! !
