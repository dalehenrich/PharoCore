
!TestCase class methodsFor: 'testing'!
methodFailed: aSelector
	^ (self lastRun at: #failures) includes: aSelector! !
