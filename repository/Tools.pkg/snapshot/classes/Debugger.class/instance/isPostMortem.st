
!Debugger methodsFor: 'accessing'!
isPostMortem
	"return whether we're inspecting a frozen exception without a process attached"
	|selectedContext|
	selectedContext := self selectedContext.
	(interruptedProcess suspendedContext == selectedContext)
		ifTrue: [ ^ false ].
	^ (interruptedProcess suspendedContext findContextSuchThat: [:c | c sender == selectedContext]) isNil! !
