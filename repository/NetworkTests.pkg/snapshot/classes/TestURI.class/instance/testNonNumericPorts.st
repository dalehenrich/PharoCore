
!TestURI methodsFor: 'tests ports'!
testNonNumericPorts
	"Ports are numeric; non-numeric ports become part of a regName."
	"We should check the spec and see what should be done"
	
	<expectedFailure>
	
	| uri uriString |
	uriString := 'scheme://host:port/'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self assert: (uri isAbsolute).
	self deny: (uri isOpaque).
	self assert: (uri authority name = 'host:port')
! !
