
!CommandLineResource methodsFor: 'as yet unclassified'!
tearDown

	CommandLine uniqueInstance input: realParams.
	CommandLine resetRegistrations.
	realRegistrations keysDo: [ :each |
		| val |
		val := realRegistrations at: each.
		CommandLine register: val value if: val key name: each].

	! !
