
!SHParserST80 methodsFor: 'parse'!
parseMethodTemporaries
	currentTokenFirst == $|
		ifTrue: [self scanPast: #methodTempBar.
			[self isName]
				whileTrue: [self scanPast: #patternTempVar].
			self failUnless: currentToken = '|'.
			self scanPast: #methodTempBar]! !
