
!ExceptionTests methodsFor: 'testing-exceptiontester'!
testDoubleOuterPass
	self assertSuccess: (ExceptionTester new runTest: #doubleOuterPassTest ) ! !
