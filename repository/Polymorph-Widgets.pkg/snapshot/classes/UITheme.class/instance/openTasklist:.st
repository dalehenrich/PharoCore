
!UITheme methodsFor: 'services'!
openTasklist: event
	"Open a tasklist to choose a window.
	Answer true if handled, false otherwise."

	TasklistMorph useHistoricalShortcuts
		ifTrue: [
			Sensor commandKeyPressed ifFalse: [^ false].
			Sensor shiftPressed ifTrue: [ ^ false ].
			event keyCharacter = Character arrowLeft
				ifTrue: [TasklistMorph new openAsIs selectPreviousTask.
					^true].
			event keyCharacter = Character arrowRight
				ifTrue: [TasklistMorph new openAsIs selectNextTask.
					^true].
			^false ]
		ifFalse: [
			 event keyString =  '<Opt-tab>'														
				ifTrue: [
					TasklistMorph new openAsIs selectNextTask.
					^ true ].
				
			event keyString =  '<Opt-Shift-tab>'														
				ifTrue: [ 
					TasklistMorph new openAsIs selectPreviousTask.
					^ true ]].
	^ false
		! !
