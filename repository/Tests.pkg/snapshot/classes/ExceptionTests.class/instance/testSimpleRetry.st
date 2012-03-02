
!ExceptionTests methodsFor: 'testing-exceptiontester'!
testSimpleRetry
	self assertSuccess: (ExceptionTester new runTest: #simpleRetryTest ) ! !
