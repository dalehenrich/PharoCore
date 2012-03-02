
!TestCase class methodsFor: 'testing'!
storedMethodRaisedError: aSelector
	^ (self lastStoredRun at: #errors) includes: aSelector! !
