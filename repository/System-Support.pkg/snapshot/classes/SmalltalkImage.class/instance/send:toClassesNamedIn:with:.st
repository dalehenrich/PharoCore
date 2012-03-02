
!SmalltalkImage methodsFor: 'snapshot and quit'!
send: startUpOrShutDown toClassesNamedIn: startUpOrShutDownList with: argument
	"Send the message #startUp: or #shutDown: to each class named in the list.
	The argument indicates if the system is about to quit (for #shutDown:) or if
	the image is resuming (for #startUp:).
	If any name cannot be found, then remove it from the list."

	| removals errors |
	removals := OrderedCollection new.
	errors := OrderedCollection new.
	startUpOrShutDownList do: [ :name | 
			| class |
			class := self at: name ifAbsent: [ nil ].
			class isNil
				ifTrue: [ removals add: name]
				ifFalse: [ 
					[class perform: startUpOrShutDown with: argument]
						on: Error do: [ :err|
							Smalltalk 
								logError: '==== Startup Error: ', err description 
								inContext: err signalerContext.
							errors add: err ]]].
			
	"Remove any obsolete entries, but after the iteration"
	startUpOrShutDownList removeAll: removals.
	^ errors! !
