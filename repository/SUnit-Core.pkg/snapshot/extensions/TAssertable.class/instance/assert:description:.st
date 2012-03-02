
!TAssertable methodsFor: 'asserting'!
assert: aBooleanOrBlock description: aStringOrBlock
	aBooleanOrBlock value ifFalse: [
		| message |
		message := aStringOrBlock value.
		TestResult failure signal: message]
			! !
