
!MessageTally methodsFor: 'initialize-release'!
spyAllEvery: millisecs on: aBlock
	"Create a spy and spy on the given block at the specified rate."
	"Spy all the system processes"

	| myDelay time0 |
	aBlock isBlock
		ifFalse: [ self error: 'spy needs a block here' ].
	self class: aBlock receiver class method: aBlock method.
		"set up the probe"
	myDelay := Delay forMilliseconds: millisecs.
	time0 := Time millisecondClockValue.
	gcStats := Smalltalk vm getParameters.
	Timer ifNotNil: [ self error: 'it seems a tally is already running' ].
	Timer := [
		[true] whileTrue: [
			| startTime observedProcess |
			startTime := Time millisecondClockValue.
			myDelay wait.
			observedProcess := Processor preemptedProcess.
			self
				tally: observedProcess suspendedContext
				in: observedProcess
				"tally can be > 1 if ran a long primitive"
				by: (Time millisecondClockValue - startTime) // millisecs].
		nil] newProcess.
	Timer priority: Processor timingPriority-1.
		"activate the probe and evaluate the block"
	Timer resume.
	^ aBlock ensure: [
		"cancel the probe and return the value"
		"Could have already been terminated. See #terminateTimerProcess"
		Timer ifNotNil: [
			Timer terminate.
			Timer := nil ].
		"Collect gc statistics"
		Smalltalk vm getParameters keysAndValuesDo: [ :idx :gcVal | 
			gcVal ifNotNil: [ gcStats at: idx put: (gcVal - (gcStats at: idx))]].
		time := Time millisecondClockValue - time0]! !
