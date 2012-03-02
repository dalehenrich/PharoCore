
!SimpleCodeLoader class methodsFor: 'as yet unclassified'!
commandLineHandlerAction: aCommandLine
	
	"Load the file specified on the command line"

	| scriptName prefix |

	prefix := 'file://'.
	
	scriptName := (aCommandLine parameterAt: 1) ifNil:[''].
	scriptName := scriptName convertFromSystemString.
	scriptName ifNotEmpty: [
		(scriptName asLowercase beginsWith: prefix)
			ifTrue: [scriptName := scriptName allButFirst: prefix size].
 
		((FileStream readOnlyFileNamed: scriptName) 
			converter: UTF8TextConverter new;
			contentsOfEntireFile) readStream fileInSilently].	

	! !
