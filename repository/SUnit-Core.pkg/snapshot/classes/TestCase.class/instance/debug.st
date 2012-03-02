
!TestCase methodsFor: 'running'!
debug
	[(self class selector: testSelector) runCase]
		ensure: [TestResource resetResources: self resources]! !
