
!TestURI methodsFor: 'test path'!
testRelativePathWithTrailingSlash
	
	<expectedFailure>
	
	| uri uriString |
	uriString := 'trailing/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self assert: (uri path size = 2).! !
