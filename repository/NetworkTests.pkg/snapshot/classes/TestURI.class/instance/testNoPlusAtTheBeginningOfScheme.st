
!TestURI methodsFor: 'expected failures'!
testNoPlusAtTheBeginningOfScheme
	"Digits and + and - and . may be allowed, but not at the beginning."

	<expectedFailure>

	self should: [URI fromString: '+scheme://host/']
		raise: IllegalURIException.
	self should: [URI fromString: '-scheme://host/']
		raise: IllegalURIException.
	self should: [URI fromString: '.scheme://host/']
		raise: IllegalURIException.
	self shouldnt: [URI fromString: 'sche-me://host/']
		raise: IllegalURIException.
	self shouldnt: [URI fromString: 'sche+me://host/']
		raise: IllegalURIException.
	self shouldnt: [URI fromString: 'sche.me://host/']
		raise: IllegalURIException
! !
