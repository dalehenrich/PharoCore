
!CPUWatcher methodsFor: 'startup-shutdown'!
stopMonitoring
	watcher ifNotNil: [
		self processBrowser terminateProcess: watcher.
		watcher := nil.
	]! !
