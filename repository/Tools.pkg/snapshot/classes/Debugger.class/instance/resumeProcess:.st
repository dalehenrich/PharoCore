
!Debugger methodsFor: 'private'!
resumeProcess: aTopView 
	savedCursor notNil ifTrue:[ savedCursor show].
	interruptedProcess isTerminated
		ifFalse: [errorWasInUIProcess
				ifTrue: [UIManager default resumeUIProcess: interruptedProcess]
				ifFalse: [interruptedProcess resume]].
	"if old process was terminated, just terminate current one"
	interruptedProcess := nil.
	"Before delete, so release doesn't terminate it"
	aTopView delete.
	World displayWorld.
	Smalltalk installLowSpaceWatcher.
	"restart low space handler"
	errorWasInUIProcess == false
		ifFalse: [Processor terminateActive]! !
