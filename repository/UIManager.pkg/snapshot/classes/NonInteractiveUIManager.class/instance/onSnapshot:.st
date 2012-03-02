
!NonInteractiveUIManager methodsFor: 'as yet unclassified'!
onSnapshot: resuming
	"The resuming argument is true when image boots from disk,
	and false, if user just did an image snapshot."
	
	resuming ifTrue: [
		Smalltalk isHeadless ifFalse: [
			FileStream stdout nextPutAll: 'morphic'; crlf.
			"restore old, or nil, so it will be set in #default "
			uiManager beDefault.  
			UIManager default onSnapshot: resuming.
			^ self ].
		Smalltalk isInteractive ifTrue: [
			FileStream stdout nextPutAll: 'interactive headless'; crlf.
			"use a headless but interactive manager"
			^ self headlessManager onSnapshot: resuming ]].
	
	
	" this flag set to true only if we are saving a snapshot before quitting "
	doNotQuitOnRestart ifTrue: [
		Smalltalk snapshot: false andQuit: true].! !
