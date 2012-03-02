
!TestRunner methodsFor: 'processing'!
runTestSuite: aTestSuite using: testRunner displayingProgress: progress 
	progress isEmptyOrNil
		ifTrue: [aTestSuite tests do: testRunner]
		ifFalse: [aTestSuite tests do: testRunner displayingProgress: aTestSuite name]! !
