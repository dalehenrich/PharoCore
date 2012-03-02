
!ProcessBrowser methodsFor: 'initialization'!
windowIsClosing
	startedCPUWatcher ifTrue: [ CPUWatcher stopMonitoring ]! !
