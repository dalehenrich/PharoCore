
!TestURI methodsFor: 'tests 2396'!
test2396ParseMailto
	"From section 1.3."

	| uri uriString |
	uriString := 'mailto:mduerst@ifi.unizh.ch'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque)! !
