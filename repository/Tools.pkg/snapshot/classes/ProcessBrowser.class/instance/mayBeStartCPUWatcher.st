
!ProcessBrowser methodsFor: 'initialization'!
mayBeStartCPUWatcher
	startedCPUWatcher ifTrue: [ self setUpdateCallbackAfter: 7 ].
! !
