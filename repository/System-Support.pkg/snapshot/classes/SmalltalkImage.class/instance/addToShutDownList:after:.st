
!SmalltalkImage methodsFor: 'startup list'!
addToShutDownList: aClass after: predecessor

	self add: aClass toList: ShutDownList after: predecessor! !
