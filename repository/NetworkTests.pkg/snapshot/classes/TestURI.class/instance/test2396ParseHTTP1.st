
!TestURI methodsFor: 'tests 2396'!
test2396ParseHTTP1
	"From section 1.3."

	| uri uriString |
	uriString := 'http://www.math.uio.no/faq/compression-faq/part1.html'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque)! !
