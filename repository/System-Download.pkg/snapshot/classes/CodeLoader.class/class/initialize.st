
!CodeLoader class methodsFor: 'CommandLine Handling'!
initialize
	CommandLine register: [ :cl | CodeLoader commandLineHandlerAction: cl] if:[ :cl | CodeLoader commandLineHandlerCondition: cl] name: #CodeLoader! !
