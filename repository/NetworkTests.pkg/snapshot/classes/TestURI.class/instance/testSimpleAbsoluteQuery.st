
!TestURI methodsFor: 'tests query'!
testSimpleAbsoluteQuery
	"Absolute query."

	<expectedFailure>

	| uri uriString |
	uriString := 'scheme://host/path/to/resource?query'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri query = 'query').! !
