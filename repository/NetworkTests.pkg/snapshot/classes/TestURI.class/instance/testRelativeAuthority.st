
!TestURI methodsFor: 'tests authority'!
testRelativeAuthority
	"self debug: #testRelativeAuthority"
	
	<expectedFailure>
	
	| uri relativeURIString |
	"A relative URI with authority. relative uri does not start with a scheme:."
	relativeURIString := '//www.pharo-project.org'. 
	uri := URI fromString: relativeURIString.
	self assert: (uri asString = relativeURIString).
	self deny: (uri isAbsolute).
	self assert: (uri isRelative). 
	self assert: (uri authority asString =  'www.pharo-project.org').
	self deny: (uri isOpaque).! !
