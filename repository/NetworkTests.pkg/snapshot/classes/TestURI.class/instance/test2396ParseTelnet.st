
!TestURI methodsFor: 'tests 2396'!
test2396ParseTelnet
	"From section 1.3."

	| uri uriString |
	uriString := 'telnet://melvyl.ucop.edu/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque)! !
