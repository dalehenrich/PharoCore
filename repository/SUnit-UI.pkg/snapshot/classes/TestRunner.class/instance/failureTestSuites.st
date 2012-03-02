
!TestRunner methodsFor: 'accessing'!
failureTestSuites
	^ failedList
		collect: [:each | TestSuite new
				in: [:suite | suite addTest: each;
						name: (self label: 'Failure' forSuite: suite)]; yourself]! !
