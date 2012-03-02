
!TestAsserter methodsFor: 'asserting'!
assert: aBoolean description: aString
	aBoolean ifFalse:
		[self logFailure: aString.
		TestResult failure signal: aString].! !
