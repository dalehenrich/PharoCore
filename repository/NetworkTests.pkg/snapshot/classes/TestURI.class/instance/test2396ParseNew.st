
!TestURI methodsFor: 'tests 2396'!
test2396ParseNew
	"From section 1.3."

	| uri uriString |
	uriString := 'news:comp.infosystems.www.servers.unix'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque)! !
