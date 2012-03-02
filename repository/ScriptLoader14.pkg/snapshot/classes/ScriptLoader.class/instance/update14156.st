
!ScriptLoader methodsFor: 'pharo - updates'!
update14156
	"self new update14156"
	self withUpdateLog: 'Issue 4832:	Ring enhancements
		http://code.google.com/p/pharo/issues/detail?id=4832'.
	self loadTogether: self script420 merge: false.
	self flushCaches.
! !
