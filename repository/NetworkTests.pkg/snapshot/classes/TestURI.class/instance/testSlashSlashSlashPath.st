
!TestURI methodsFor: 'test path'!
testSlashSlashSlashPath
	
	<expectedFailure>
	
	| uri uriString |
	uriString := '///'.
	uri := URI fromString: uriString.
	self assert: (uri asString = uriString).
	self deny: (uri isAbsolute).
	self assert: (uri authority host asString = '').
	self assert: (uri path size = 2).! !
