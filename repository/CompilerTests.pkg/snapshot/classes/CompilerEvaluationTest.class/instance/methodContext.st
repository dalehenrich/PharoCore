
!CompilerEvaluationTest methodsFor: 'helper methods'!
methodContext
	| process |
	process := [ self weightedAverage total ] newProcess.
	[ process step ] doWhileTrue: [ process suspendedContext method selector ~= #total ].
	^ process suspendedContext! !
