
!SetInspector class methodsFor: 'tools registry'!
registerToolsOn: registry
	"Register ourselves as inspector for Set"
	
	 
	registry registerInspector: self for: Set
! !
