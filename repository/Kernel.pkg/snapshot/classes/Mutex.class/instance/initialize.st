
!Mutex methodsFor: 'initialize'!
initialize
	super initialize.
	semaphore := Semaphore forMutualExclusion.! !
