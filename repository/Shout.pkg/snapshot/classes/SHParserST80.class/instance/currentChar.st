
!SHParserST80 methodsFor: 'scan'!
currentChar
	^ source
		at: sourcePosition
		ifAbsent: []! !
