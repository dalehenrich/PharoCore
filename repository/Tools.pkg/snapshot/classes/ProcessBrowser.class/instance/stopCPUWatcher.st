
!ProcessBrowser methodsFor: 'initialization'!
stopCPUWatcher
	| pw |
	pw := Smalltalk globals at: #CPUWatcher ifAbsent: [ ^ self ].
	pw
		ifNotNil: [ 
			pw stopMonitoring.
			self updateProcessList.
			startedCPUWatcher := false	"so a manual restart won't be killed later" ]! !
