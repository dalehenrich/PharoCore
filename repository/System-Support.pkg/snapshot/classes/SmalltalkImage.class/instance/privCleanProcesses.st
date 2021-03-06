
!SmalltalkImage methodsFor: 'PharoKernel-private'!
privCleanProcesses

	UIManager default terminateUIProcess.

	(Process allInstances select: [:p | 
		( {	
			InputEventFetcher default instVarNamed: #fetcherProcess.
			Processor activeProcess.
			WeakArray runningFinalizationProcess.
			Processor backgroundProcess
		} includes: p ) not ])
	do: [:p | p suspend. p terminate ].	

	Delay startTimerEventLoop.! !
