
!SmalltalkImage methodsFor: 'startup list'!
removeFromShutDownList: aClass

	ShutDownList remove: aClass name ifAbsent: []! !
