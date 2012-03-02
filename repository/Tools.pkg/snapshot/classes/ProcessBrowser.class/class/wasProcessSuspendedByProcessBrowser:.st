
!ProcessBrowser class methodsFor: 'process control'!
wasProcessSuspendedByProcessBrowser: aProcess
	^self suspendedProcesses includesKey: aProcess! !
