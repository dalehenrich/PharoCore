
!TestURI methodsFor: 'tests 2396'!
test2396ParseFTP
	"From section 1.3."

	| uri uriString |
	uriString := 'ftp://ftp.is.co.za/rfc/rfc1808.txt'.
	uri := URI fromString: uriString.
	self assert:  (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque)! !
