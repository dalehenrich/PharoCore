
!SimpleCodeLoader class methodsFor: 'as yet unclassified'!
register

	CommandLine 
		register: [ :cl | SimpleCodeLoader commandLineHandlerAction: cl] 
		if: [ :cl | true ]
		name: #SimpleCodeLoader! !
