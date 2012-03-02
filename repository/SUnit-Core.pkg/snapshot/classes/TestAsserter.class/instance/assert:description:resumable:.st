
!TestAsserter methodsFor: 'asserting'!
assert: aBoolean description: aString resumable: resumableBoolean
	| exception |
	aBoolean ifFalse:
		[self logFailure: aString.
		exception := resumableBoolean
			ifTrue: [TestResult resumableFailure]
			ifFalse: [TestResult failure].
		exception signal: aString].! !
