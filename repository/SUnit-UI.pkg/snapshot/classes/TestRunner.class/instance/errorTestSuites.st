
!TestRunner methodsFor: 'accessing'!
errorTestSuites
	^ errorList
		collect: [:each | TestSuite new
				in: [:suite | suite addTest: each;
						name: (self label: 'Error' forSuite: suite)]; yourself]! !
