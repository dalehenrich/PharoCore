
!ScriptLoader methodsFor: 'pharo - updates'!
update14258
	"self new update14258"
	self withUpdateLog: '- Issue 5101:	better, cleaner, more tests for SharedPool
	http://code.google.com/p/pharo/issues/detail?id=5101'.
	self loadTogether: self script521 merge: false.
	self flushCaches.
! !
