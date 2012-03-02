
!AtomicSharedQueue methodsFor: 'initialize-release'!
initialize
	super initialize.
	availSema := Semaphore new.
	! !
