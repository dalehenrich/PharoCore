
!SHParserST80 methodsFor: 'parse'!
parseStatementListForBraceArray
	[currentTokenFirst ~~ $}
		ifTrue: [self parseStatement].
	currentTokenFirst == $.]
		whileTrue: [self scanPast: #statementSeparator]! !
