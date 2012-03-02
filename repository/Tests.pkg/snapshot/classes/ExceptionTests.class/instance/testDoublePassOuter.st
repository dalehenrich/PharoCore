
!ExceptionTests methodsFor: 'testing-exceptiontester'!
testDoublePassOuter
	self assertSuccess: (ExceptionTester new runTest: #doublePassOuterTest ) ! !
