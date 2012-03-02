
!ScriptLoader methodsFor: 'pharo - updates'!
update14261
	"self new update14261"
	self withUpdateLog: 'Issue 4745:	Debugger opens when trying to get unimplemented calls
	http://code.google.com/p/pharo/issues/detail?id=4745
Issue 4870:	numargs?
	http://code.google.com/p/pharo/issues/detail?id=4870
Issue 5111:	Make TestRunner search input ignore case
	http://code.google.com/p/pharo/issues/detail?id=5111
Issue 5087:	remove unsent methods from ServerDirectory
	http://code.google.com/p/pharo/issues/detail?id=5087'.
	self loadTogether: self script524 merge: false.
	self flushCaches.
! !
