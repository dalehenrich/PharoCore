
!CommandLineResource methodsFor: 'as yet unclassified'!
setUp
	| reg |
	super setUp.
	realParams := CommandLine uniqueInstance allParameters.
	realRegistrations := CommandLine registrations.
	CommandLine resetRegistrations.
	reg := self testRegistrations.
	reg keysDo: [ :each | 
		| assoc |
		assoc := reg at: each.
		CommandLine register: assoc value if: assoc key name: each.
	].
	CommandLine uniqueInstance input: self testParameters! !
