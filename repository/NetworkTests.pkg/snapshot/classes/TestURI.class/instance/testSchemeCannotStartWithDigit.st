
!TestURI methodsFor: 'parsing tests'!
testSchemeCannotStartWithDigit
	"A scheme cannot begin with a digit."

	<expectedFailure>

	self should: [URI fromString: '69cheme://host/']
		raise: IllegalURIException
! !
