
!TestAsserter methodsFor: 'asserting'!
assert: aBoolean
	aBoolean ifFalse:
		[self logFailure: 'Assertion failed'.
		TestResult failure signal: 'Assertion failed'].! !
