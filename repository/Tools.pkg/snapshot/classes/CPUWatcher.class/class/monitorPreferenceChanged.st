
!CPUWatcher class methodsFor: 'setting'!
monitorPreferenceChanged
	self cpuWatcherEnabled
		ifTrue: [ self startMonitoring ]
		ifFalse: [ self stopMonitoring ]! !
