
!CommandLineUIManager methodsFor: 'events'!
onSnapshot: resuming
	"The resuming argument is true when image boots from disk,
	and false, if user just did an image snapshot."
	
	"if we resuming and interactive, then restore original UI manager"
	
	resuming ifFalse: [
		
		" this flag set to true only if we saving a snapshot before quitting "
		doNotQuitOnRestart ifTrue: [
			Smalltalk snapshot: false andQuit: true
			]
		].
	(resuming and: [ Smalltalk isInteractive ]) ifTrue: [
		Default := uiManager.   "restore old, or nil, so it will be set in #default "
		UIManager default onSnapshot: resuming ]! !
