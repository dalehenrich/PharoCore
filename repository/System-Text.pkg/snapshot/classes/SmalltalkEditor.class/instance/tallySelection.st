
!SmalltalkEditor methodsFor: 'do-its'!
tallySelection
	"Treat the current selection as an expression; evaluate and tally it."
	| receiver context v |
	(model respondsTo: #doItReceiver) 
		ifTrue: 
			[receiver := model doItReceiver.
			context := model doItContext]
		ifFalse:
			[receiver := context := nil].
	self lineSelectAndEmptyCheck: [ ^ self ].

	[ | compiledMethod profiler |
		compiledMethod := self compileSelectionFor: receiver in: context.
		compiledMethod ifNil: [^ self].
		profiler := TimeProfiler spyOn: [ v:= compiledMethod valueWithReceiver: receiver arguments: #()].
		profiler showResult: v.
	] 
		on: OutOfScopeNotification 
		do: [ :ex | ex resume: true].
! !
