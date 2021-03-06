
!MCVersion methodsFor: 'accessing'!
loadCompleteSnapshot
	|definitions|
	
	definitions := self snapshot definitions asOrderedCollection.
	
	self dependencies 
		do: [ :each| definitions addAll: each resolve completeSnapshot definitions ]
		displayingProgress: [ :item| 'Loading dependencies from: ', item package name ].
	
	^ MCSnapshot fromDefinitions: definitions! !
