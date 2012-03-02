
!TestCase class methodsFor: 'testing'!
methodRaisedError: aSelector
	^ (self lastRun at: #errors) includes: aSelector! !
