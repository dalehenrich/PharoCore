
!TestURI methodsFor: 'expected failures'!
testSchemeShouldNotContainAt
	"No @ in a scheme."
	
	<expectedFailure>

	self should: [URI fromString: 'sch@eme://host/']
		raise: IllegalURIException.
! !
