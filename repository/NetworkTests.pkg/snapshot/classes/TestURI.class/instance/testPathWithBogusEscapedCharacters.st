
!TestURI methodsFor: 'tests user info'!
testPathWithBogusEscapedCharacters

	<expectedFailure>

	self should: [URI fromString: 'scheme:/path/to/e%rror']
		raise: Error! !
