
!ExceptionTester methodsFor: 'results'!
doubleResumeTestResults

       ^OrderedCollection new
               add: self doSomethingString;
               add: self doSomethingElseString;
               add: self doYetAnotherThingString;
               yourself! !