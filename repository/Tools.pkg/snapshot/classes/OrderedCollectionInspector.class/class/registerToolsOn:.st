
!OrderedCollectionInspector class methodsFor: 'tools registry'!
registerToolsOn: registry
	"Register ourselves as inspector for OrderedCollection"
	
	 
	registry registerInspector: self for: OrderedCollection
! !
