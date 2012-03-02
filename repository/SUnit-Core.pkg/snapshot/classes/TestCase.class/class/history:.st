
!TestCase class methodsFor: 'history'!
history: aDictionary

	history := aDictionary.
	TestAnnouncer announcer announce: (TestSuiteEnded result: self)! !
