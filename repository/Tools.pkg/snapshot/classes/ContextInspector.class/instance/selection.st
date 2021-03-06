
!ContextInspector methodsFor: 'accessing'!
selection
	"The receiver has a list of variables of its inspected object.
	One of these is selected. Answer the value of the selected variable."
	
	| basicIndex |
	selectionIndex = 0 ifTrue: [^ ''].
	selectionIndex = 1 ifTrue: [^ object].
	selectionIndex = 2 ifTrue: [^ object longPrintStringLimitedTo: 20000].
	(selectionIndex - 2) <= object class instSize
		ifTrue: [^ object instVarAt: selectionIndex - 2].
	basicIndex := selectionIndex - 2 - object class instSize.
	^object debuggerMap namedTempAt: basicIndex in: object
! !
