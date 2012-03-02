
!ProcessBrowser methodsFor: 'process actions'!
wasProcessSuspendedByProcessBrowser: aProcess
	^self class suspendedProcesses includesKey: aProcess! !
