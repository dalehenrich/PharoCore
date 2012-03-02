
!ExceptionTester methodsFor: 'suites'!
runBasicANSISignaledExceptionTests

	self basicANSISignaledExceptionTestSelectors
		do:
			[:eachTestSelector |
			self runTest: eachTestSelector]! !
