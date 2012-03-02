
!ExceptionTests methodsFor: 'testing'!
testTimeoutWithZeroDuration
	self assertSuccess: (ExceptionTester new runTest: #simpleTimeoutWithZeroDurationTest ) ! !
