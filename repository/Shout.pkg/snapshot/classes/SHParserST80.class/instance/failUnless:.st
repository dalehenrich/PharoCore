
!SHParserST80 methodsFor: 'error handling'!
failUnless: aBoolean 
	aBoolean
		ifFalse: [self error]! !
