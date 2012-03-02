
!ScriptLoader methodsFor: 'pharo - updates'!
update14353
	"self new update14353"
	self withUpdateLog: 'Issue 5198:	All the methods in convenience-debugging in ToolRegistry should be deprecated.
	http://code.google.com/p/pharo/issues/detail?id=5198
	
Issue 3439:	Compiler error subscript is out of bounds: ...
	http://code.google.com/p/pharo/issues/detail?id=3439'.
	self loadTogether: self script614 merge: false.
	self flushCaches.
! !
