
!ExternalSemaphoreTable class methodsFor: 'initialize'!
initialize
	ProtectAdd := Semaphore forMutualExclusion.
	ProtectRemove := Semaphore forMutualExclusion! !
