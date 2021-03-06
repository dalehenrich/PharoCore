
!Debugger methodsFor: 'context stack (message list)'!
toggleContextStackIndex: anInteger 
	"If anInteger is the same as the index of the selected context, deselect it. 
	Otherwise, the context whose index is anInteger becomes the selected 
	context."

	self contextStackIndex: 
		(contextStackIndex = anInteger
			ifTrue: [0]
			ifFalse: [anInteger])
		oldContextWas:
		(contextStackIndex = 0
			ifTrue: [nil]
			ifFalse: [contextStack at: contextStackIndex]).
			
	"if the last context is selected expand the stack automatically a bit"
	contextStack size = anInteger
		ifTrue: [ self partiallyExpandStack ].! !
