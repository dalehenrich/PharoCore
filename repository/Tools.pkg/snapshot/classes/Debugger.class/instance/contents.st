
!Debugger methodsFor: 'accessing'!
contents 
	"Depending on the current selection, different information is retrieved.
	Answer a string description of that information.  This information is the
	method in the currently selected context."

	contents == nil ifTrue: [^ String new].
	^ contents copy! !
