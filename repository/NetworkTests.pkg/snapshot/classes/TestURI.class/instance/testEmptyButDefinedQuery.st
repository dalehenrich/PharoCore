
!TestURI methodsFor: 'tests query'!
testEmptyButDefinedQuery
	"Empty (but defined) query."

	<expectedFailure>

	| uri uriString |
	uriString := 'scheme:/path/to/resource?'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri query = '').! !
