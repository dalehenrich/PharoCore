
!ExceptionTester methodsFor: 'suites'!
runBasicTests

	self basicTestSelectors
		do:
			[:eachTestSelector |
			self runTest: eachTestSelector]! !
