
!SHTextStylerST80 methodsFor: 'private'!
rangesIn: aText setWorkspace: aBoolean 
	parser
		ifNil: [parser := SHParserST80 new].
	^ parser
		rangesIn: aText asString
		classOrMetaClass: classOrMetaClass
		workspace: (aBoolean
				ifTrue: [workspace])
		environment: environment! !
