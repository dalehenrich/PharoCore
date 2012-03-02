
!ScriptLoader methodsFor: 'pharo - updates'!
update14085
	"self new update14085"
	self withUpdateLog: 'Issue 4587:	Failing tests related to renaming classes
	http://code.google.com/p/pharo/issues/detail?id=4587'.
	self loadTogether: self script350 merge: false.
	self flushCaches.
! !
