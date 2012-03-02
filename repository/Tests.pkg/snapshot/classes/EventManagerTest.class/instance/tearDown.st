
!EventManagerTest methodsFor: 'running'!
tearDown

	eventSource releaseActionMap.
	eventSource := nil.
	eventListener := nil.
	super tearDown.
! !
