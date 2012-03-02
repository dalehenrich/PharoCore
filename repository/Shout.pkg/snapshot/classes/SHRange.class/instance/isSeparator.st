
!SHRange methodsFor: 'testing'!
isSeparator
	
	^#(#methodTempBar #statementSeparator #patternUnary #patternArg #blockPatternArg #blockArgsBar #return #primitiveOrExternalCallEnd) identityIncludes: type! !
