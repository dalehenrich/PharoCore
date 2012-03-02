
!CPUWatcher class methodsFor: 'as yet unclassified'!
currentWatcherProcess
	^CurrentCPUWatcher ifNotNil: [ CurrentCPUWatcher watcherProcess ]
! !
