
!SHParserST80 methodsFor: 'parse'!
parseByteArray
	[currentTokenFirst == $]]
		whileFalse: [self scanPast: #integer].
	self scanPast: #byteArrayEnd! !
