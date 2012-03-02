
!TestCase methodsFor: 'asserting'!
assert: aBooleanOrBlock description: aString
	aBooleanOrBlock value ifFalse: [
		self logFailure: aString.
		TestResult failure signal: aString]
			! !
