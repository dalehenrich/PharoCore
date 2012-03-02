
!SHParserST80 methodsFor: 'error handling'!
failWhen: aBoolean 
	aBoolean
		ifTrue: [self error]! !
