
!UserInterruptHandler methodsFor: 'private'!
processToInterrupt
	"look for best candidate to interrupt:
	   first who is not weak-finalization process
	   and only then weak-finalization process, if nothing left to interrupt.
	
	  filter out the idle process, since killing it is fatal
	"
	| list |
	
	list := OrderedCollection new.
	Processor scanSchedule: [:p |
		"gather everything but idle process, and processes whose suspendedContext sender == nil,
		which usually means that process is only scheduled but had no chance to run"
		
		((p ~~ Processor backgroundProcess) and: [ p suspendedContext sender notNil ])
			ifTrue: [ list add: p ] ] startingAt: Processor activePriority.
	
	"now answer first process in list, skipping the finalization process"
	list do: [:p | p ==  WeakArray runningFinalizationProcess ifFalse: [ ^ p ] ].
	
	"now answer first process , if any"
	^ list isEmpty ifTrue: [ nil ] ifFalse: [ list first ]! !
