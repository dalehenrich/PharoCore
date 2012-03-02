
!CodeLoader class methodsFor: 'CommandLine Handling'!
commandLineHandlerAction: aCommandLine
	"Load the file specified on the command line"
	
	| loader |
	
	loader := self new.
	loader loadSourceFiles: (Array with: (self parseUrl: aCommandLine) asString).
	loader installSourceFiles.! !
