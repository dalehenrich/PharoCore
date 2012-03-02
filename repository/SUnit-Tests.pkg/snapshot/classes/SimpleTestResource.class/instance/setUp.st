
!SimpleTestResource methodsFor: 'running'!
setUp
	
	self runningState: self startedStateSymbol.
	hasSetup := true! !
