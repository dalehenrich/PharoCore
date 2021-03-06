
!TestURI methodsFor: 'tests query'!
testQueryWithOnlyQueryPart
	"According to the BNF, there must be something besides questions, but according to the resolution examples, a relative URI containing only a query is just fine.  Since the latter is in common usage, we deviate from the BNF."
	
	<expectedFailure>

	| uri uriString |
	uriString := '?query'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri query = 'query').! !
