
!ScriptLoader methodsFor: 'pharo - updates'!
update14293
	"self new update14293"
	self withUpdateLog: '- Issue 5168: TaskList switching raises exception. First part.
	http://code.google.com/p/pharo/issues/detail?id=5168
	
-  Issue 1380: Method for block not found on stack in Debugger. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=1380

-  Issue 5199:	All the methods in convenience-inspecting in ToolRegistry should be deprecated. Igor drinking tea and discussing on solution :).
	http://code.google.com/p/pharo/issues/detail?id=5199
	'.
	self loadTogether: self script556 merge: false.
	self flushCaches.
! !
