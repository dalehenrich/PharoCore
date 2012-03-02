
!ScriptLoader methodsFor: 'pharo - updates'!
update14183
	"self new update14183"
	self withUpdateLog: 'Issue 4879:	MC Browse and Changes with all dependencies
	http://code.google.com/p/pharo/issues/detail?id=4879'.
	self loadTogether: self script446 merge: false.
	self flushCaches.
! !
