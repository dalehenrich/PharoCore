
!TestURI methodsFor: 'tests 2396'!
test2396ParseGopher
	"From section 1.3."

	| uri uriString |
	uriString := 'gopher://spinaltap.micro.umn.edu/00/Weather/California/Los%20Angeles'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque)
	"we probably have a problem with the %20 escape character"! !
