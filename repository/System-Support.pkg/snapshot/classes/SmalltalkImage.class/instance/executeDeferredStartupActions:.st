
!SmalltalkImage methodsFor: 'snapshot and quit'!
executeDeferredStartupActions: resuming
	"Execute the deferred actions which where added during startup, resuming is true if the iage was started fresh, false if we just saved an image"

	| errors |
	
	deferredStartupActions ifNil: [^ #()].
	
	errors := OrderedCollection new.	
		
	deferredStartupActions do: [:each | 
		[ each cull: resuming ] 
			on: Error 
			do: [ :err|
				Smalltalk 
					logError: '==== Startup Error: ', err description 
					inContext: err signalerContext.
				 errors add: err]].
	^ errors! !
