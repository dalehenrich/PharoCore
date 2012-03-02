
!TestCase methodsFor: 'running'!
run
	| result |
	result := TestResult new.
	[self run: result]
		ensure: [TestResource resetResources: self resources].
	^result! !
