
!TimeProfiler class methodsFor: 'opening'!
spyOnProcess: aProcess forMilliseconds: msecDuration 
	"Run aProcess for msecDuration milliseconds, then open a TimeProfiler on the results."

	| inst result |
	inst := self new.
	inst withBlockCodePane: false.
	result := inst runProcess: aProcess forMilliseconds: msecDuration pollingEvery: MessageTally defaultPollPeriod.
	inst open.
	^ inst! !
