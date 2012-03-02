
!ScriptLoader methodsFor: 'pharo - updates'!
update14160
	"self new update14160"
	self withUpdateLog: 'Issue 4844:	Add some comments on TickList* class	
	http://code.google.com/p/pharo/issues/detail?id=4844
Issue 4378:	Bad size of TasklistMorph preview with large titles
	http://code.google.com/p/pharo/issues/detail?id=4378'.
	self loadTogether: self script424 merge: false.
	self flushCaches.
! !
