
!TestCase class methodsFor: 'testing'!
storedMethodPassed: aSelector
	^ (self lastStoredRun at: #passed) includes: aSelector! !