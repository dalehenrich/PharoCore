
!ExceptionTester methodsFor: 'results'!
simpleEnsureTestResults

	^OrderedCollection new
		add: self doSomethingString;
		add: self doSomethingElseString;
		add: self doYetAnotherThingString;
		yourself! !
