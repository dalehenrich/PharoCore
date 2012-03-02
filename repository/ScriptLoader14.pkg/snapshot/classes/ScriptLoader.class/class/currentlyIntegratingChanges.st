
!ScriptLoader class methodsFor: 'menu'!
currentlyIntegratingChanges

	CurrentlyIntegratingChanges isNil ifTrue: [self hideIntegrationMenu].
	^ CurrentlyIntegratingChanges! !
