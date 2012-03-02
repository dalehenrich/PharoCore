
!ProcessBrowser class methodsFor: 'process control'!
nameAndRulesFor: aProcess 
	"Answer a nickname and two flags: allow-stop, and allow-debug"
	^ [aProcess caseOf: WellKnownProcesses
		 otherwise: 
			[(aProcess priority = Processor timingPriority
					and: [aProcess suspendedContext receiver == Delay])
				ifTrue: [{'the timer interrupt watcher'. false. false}]
				ifFalse: [{aProcess suspendedContext asString. true. true}]]]
		ifError: [{aProcess suspendedContext asString. true. true}]! !
