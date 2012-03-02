
!SHParserST80 methodsFor: 'parse'!
parseCascade
	self parseKeyword.
	[currentTokenFirst == $;]
		whileTrue: [self scanPast: #cascadeSeparator.
			self parseKeyword]! !
