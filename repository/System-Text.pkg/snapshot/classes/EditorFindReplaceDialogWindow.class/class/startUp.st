
!EditorFindReplaceDialogWindow class methodsFor: 'initializing'!
startUp  
	"This message is sent to registered classes when the system is coming up."
	Singleton 
		ifNotNil: [Singleton close.
			Singleton := nil]! !
