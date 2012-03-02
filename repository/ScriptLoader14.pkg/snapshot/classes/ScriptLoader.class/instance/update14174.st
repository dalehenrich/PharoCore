
!ScriptLoader methodsFor: 'pharo - updates'!
update14174
	"self new update14174"
	self withUpdateLog: 'Issue 4571:	Use becomeForward, not become
	http://code.google.com/p/pharo/issues/detail?id=4571'.
	self loadTogether: self script437 merge: false.
	self flushCaches.
! !
