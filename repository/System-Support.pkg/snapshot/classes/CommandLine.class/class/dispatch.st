
!CommandLine class methodsFor: 'dispatching'!
dispatch
	"Handle the commandLine"
	
	Smalltalk addDeferredStartupAction: [ self dispatch: singleton ]! !
