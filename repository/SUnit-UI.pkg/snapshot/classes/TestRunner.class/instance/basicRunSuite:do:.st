
!TestRunner methodsFor: 'processing'!
basicRunSuite: aTestSuite do: aBlock 
	| testBlock |
	self basicSetUpSuite: aTestSuite.
	testBlock := [:test | test selector
				displayProgressFrom: 0
				to: 2
				during: [:bar | 
					bar value: test selector asString.
					Delay forMilliseconds: 0.0001.
					aBlock value: test]].
	[self
		runTestSuite: aTestSuite
		using: testBlock
		displayingProgress: aTestSuite name]
		ensure: [self basicTearDownSuite: aTestSuite]! !
