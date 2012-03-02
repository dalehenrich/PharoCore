
!TestCase class methodsFor: 'testing'!
methodPassed: aSelector
	^ (self lastRun at: #passed) includes: aSelector! !
