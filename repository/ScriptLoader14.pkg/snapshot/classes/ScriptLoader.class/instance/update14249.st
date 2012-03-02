
!ScriptLoader methodsFor: 'pharo - updates'!
update14249
	"self new update14249"
	self withUpdateLog: 'Issue 4491:	Cleanup DebuggerMethodMap old blocks
	http://code.google.com/p/pharo/issues/detail?id=4491'.
	self loadTogether: self script512 merge: false.
	self flushCaches.
! !
