
!Clipboard class methodsFor: 'initialization'!
startUp: resuming
	"Pharo is starting up. If this platform requires specific intialization, this is a great place to put it."
	resuming
		ifTrue: [Default := nil]! !
