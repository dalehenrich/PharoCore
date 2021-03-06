
!SHParserST80 methodsFor: 'parse'!
parse: isAMethod 
	self initializeInstanceVariables.
	sourcePosition := 1.
	arguments := Dictionary new.
	temporaries := Dictionary new.
	blockDepth := bracketDepth := 0.
	ranges isNil
		ifTrue: [ranges := OrderedCollection new: 100]
		ifFalse: [ranges reset].
	errorBlock := [^ false].
	[self scanNext.
	isAMethod
		ifTrue: [self parseMessagePattern.
			self parsePragmaSequence].
	self parseMethodTemporaries.
	isAMethod
		ifTrue: [self parsePragmaSequence].
	self parseStatementList.
	currentToken
		ifNotNil: [self error]]
		ensure: [errorBlock := nil].
	^ true! !
