
!StartupLoader class methodsFor: 'initialize'!
startUp: resuming

	(self allowStartupScript and: [ resuming ])
		ifTrue: [ Smalltalk addDeferredStartupAction: [ self default loadStartupScript ]]! !
