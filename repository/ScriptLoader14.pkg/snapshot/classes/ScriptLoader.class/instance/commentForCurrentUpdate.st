
!ScriptLoader methodsFor: 'public'!
commentForCurrentUpdate
 ^ 'Issue 5290:	Cleanup Startup Error Handling
	http://code.google.com/p/pharo/issues/detail?id=5290
	
Camillo Bruni.

- provide a more readable log output on stdout
- properly handle the -interactive -headless switch
- reuse existing code when using scripts (CodeLoader)
- cleanup the logging in SmalltalkImage
- added exit code



'! !
