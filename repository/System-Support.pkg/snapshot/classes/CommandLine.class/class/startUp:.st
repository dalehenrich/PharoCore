
!CommandLine class methodsFor: 'class initialization'!
startUp: resuming

	resuming ifTrue: [
		self uniqueInstance input: self commandLineInput.
		self dispatch
	]! !
