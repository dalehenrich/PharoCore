
!TestURI methodsFor: 'tests query'!
testQueryShouldNotContainPipes
	"No questions about pipes, please."

	<expectedFailure>

	self should: [URI fromString: 'scheme:/path/to/resource?que|ry']
		raise: IllegalURIException
! !
