
!SHParserST80 methodsFor: 'parse'!
parseBinaryMessagePattern
	self scanPast: #patternBinary.
	self failUnless: self isName.
	self scanPast: #patternArg! !
