
!ContextInspector class methodsFor: 'as yet unclassified'!
registerToolsOn: registry
	"Register ourselves as inspector for MethodContext"
	
	 
	registry registerInspector: self for: MethodContext
! !
