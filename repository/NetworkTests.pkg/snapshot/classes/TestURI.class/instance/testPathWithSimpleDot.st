
!TestURI methodsFor: 'test path'!
testPathWithSimpleDot

	<expectedFailure>

	| uri uriString |
	uriString := '/path/./to/resource'.
	uri := URI fromString: uriString.
	self assert: ( uri asString = uriString).
	self assert: (uri path size = 5).! !
