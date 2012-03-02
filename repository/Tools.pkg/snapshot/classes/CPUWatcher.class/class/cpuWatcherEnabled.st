
!CPUWatcher class methodsFor: 'setting'!
cpuWatcherEnabled
	^ CpuWatcherEnabled ifNil: [CpuWatcherEnabled := false]! !
