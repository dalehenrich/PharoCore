
!TAssertable methodsFor: 'asserting'!
assert: aBoolean

	aBoolean ifFalse: [self signalFailure: 'Assertion failed']
			! !
