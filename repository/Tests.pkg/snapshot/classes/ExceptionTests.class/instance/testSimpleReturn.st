
!ExceptionTests methodsFor: 'testing-exceptiontester'!
testSimpleReturn
	self assertSuccess: (ExceptionTester new runTest: #simpleReturnTest ) ! !
