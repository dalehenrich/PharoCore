
!WeakArray class methodsFor: 'private'!
finalizationProcess
	[true] whileTrue: [ 
		WeakFinalizationList initTestPair.
		FinalizationSemaphore wait.
		FinalizationLock critical: [
			WeakFinalizationList checkTestPair.
			FinalizationDependents do: 	[:weakDependent |
				weakDependent ifNotNil: [
					[ weakDependent finalizeValues ] on: Exception fork: [:ex | ex pass ] ]]]].
! !
