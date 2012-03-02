
!TestRunner methodsFor: 'accessing'!
suiteForAllSelected
	"Return the suite for all the selected test case classes"
	^ TestSuite new in: [ :suite |
		classesSelected do: [ :each | 
			each isAbstract 
				ifFalse: [ each addToSuiteFromSelectors: suite ] ].
		suite name: (self label: 'Test' forSuite: suite) ].! !
