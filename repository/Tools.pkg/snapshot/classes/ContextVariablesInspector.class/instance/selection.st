
!ContextVariablesInspector methodsFor: 'selecting'!
selection 
	"Refer to the comment in Inspector|selection."
	selectionIndex = 0 ifTrue:[^''].
	selectionIndex = 1 ifTrue: [^object].
	selectionIndex = 2 ifTrue: [^object stackPtr > 0 ifTrue: [object top]].
	selectionIndex = 3 ifTrue: [^object tempsAndValues].
	^object debuggerMap namedTempAt: selectionIndex - 3 in: object! !
