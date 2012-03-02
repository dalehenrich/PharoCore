
!TAssertable methodsFor: 'asserting'!
assert: aBooleanOrBlock description: aString resumable: resumableBoolean 
	| exception |
	aBooleanOrBlock value
		ifFalse: 
			[TestResult failure new
				isResumable: resumableBoolean;
				signal: aString]
			! !
