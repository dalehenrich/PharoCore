
!ExceptionTester methodsFor: 'signaledexception results'!
simpleIsNestedTestResults

	^OrderedCollection new
		add: self doSomethingString;
		add: self doYetAnotherThingString;
		add: self doSomethingElseString;
		yourself! !