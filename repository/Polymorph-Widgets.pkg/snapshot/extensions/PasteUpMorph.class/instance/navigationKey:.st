
!PasteUpMorph methodsFor: '*Polymorph-Widgets'!
navigationKey: event
	"Check for active window navigation."
	
	(self theme openTasklist: event) ifTrue: [^true].
	TasklistMorph useHistoricalShortcuts
		ifTrue: [
			(event commandKeyPressed and: [event shiftPressed not]) 
				ifTrue: [
					event keyCharacter = Character arrowLeft
						ifTrue: [self navigateWindowBackward. 
								^true].
					event keyCharacter = Character arrowRight
						ifTrue: [self navigateWindowForward. 
								^true]]]
		ifFalse: [
			 event keyString =  '<Opt-tab>'														
				ifTrue: [
					self navigateWindowForward.
					^ true ].
				
			event keyString =  '<Opt-Shift-tab>'														
				ifTrue: [ 
					self navigateWindowBackward.
					^ true ]].
		^false! !
