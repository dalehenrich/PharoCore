
!TestURI methodsFor: 'tests user info'!
testOpaque

	| uri uriString |
	uriString := 'scheme:opaque'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque).
	self assert: (uri schemeSpecificPart = 'opaque').! !
