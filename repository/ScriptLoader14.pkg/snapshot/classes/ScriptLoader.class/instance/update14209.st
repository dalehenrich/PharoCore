
!ScriptLoader methodsFor: 'pharo - updates'!
update14209
	"self new update14209"
	self withUpdateLog: 'Issue 4911:	Run failures is broken
	http://code.google.com/p/pharo/issues/detail?id=4911

Issue 4935:	Rectangle Cleanup
	http://code.google.com/p/pharo/issues/detail?id=4935'.
	self loadTogether: self script472 merge: false.
	self flushCaches.
! !
