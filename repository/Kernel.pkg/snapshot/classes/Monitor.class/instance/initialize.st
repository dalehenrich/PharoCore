
!Monitor methodsFor: 'initialize-release'!
initialize
	super initialize.
	mutex := Semaphore forMutualExclusion.
	queuesMutex := Semaphore forMutualExclusion.
	nestingLevel := 0.! !
