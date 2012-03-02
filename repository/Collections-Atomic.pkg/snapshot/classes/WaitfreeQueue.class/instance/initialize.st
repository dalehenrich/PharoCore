
!WaitfreeQueue methodsFor: 'initialize-release'!
initialize
	dummy := AtomicQueueItem new.
	dummy object: dummy.
	tail := dummy.
! !
