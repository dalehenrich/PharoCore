
!TestURI methodsFor: 'tests query'!
testQueryShouldNotContainEscape
	"Those characters cannot escape."

	<expectedFailure>

	self should: [URI fromString: 'scheme:/path/to/resource?que%ry']
		raise: Error
! !
