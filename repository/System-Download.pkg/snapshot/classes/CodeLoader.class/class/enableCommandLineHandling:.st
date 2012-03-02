
!CodeLoader class methodsFor: 'CommandLine Handling'!
enableCommandLineHandling: aBoolean
	aBoolean 
		ifTrue: [ 
			[CommandLine register: [ :cl | CodeLoader commandLineHandlerAction: cl ] if: [ :cl | CodeLoader commandLineHandlerCondition: cl ] name: CodeLoader asString] on: Error do: []
		 ]
		ifFalse: [ CommandLine removeRegistrationNamed: CodeLoader asString ]! !
