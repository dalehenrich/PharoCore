
!TestURI methodsFor: 'tests authority'!
testAbsoluteURIWithSimpleAuthority
	"self debug: #testAbsoluteURIWithSimpleAuthority"
	
	| uri uriString | 
	uriString := 'http://www.pharo-project.org'.			"An absolute URI with empty (but defined) authority."
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self assert: (uri authority asString = 'www.pharo-project.org').
	self assert: (uri scheme = 'http').
	self assert: (uri schemeIsHttp).
	self deny: (uri isOpaque).
	! !
