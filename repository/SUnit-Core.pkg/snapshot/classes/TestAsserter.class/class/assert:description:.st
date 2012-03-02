
!TestAsserter class methodsFor: 'asserting'!
assert: aBoolean description: aString
	"Minimal clone of the instance-side assert protocol so that class-side methods can use it."

	aBoolean ifFalse:
		[self logFailure: aString.
		TestResult failure signal: aString].! !
