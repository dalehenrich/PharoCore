
!ScriptLoader methodsFor: 'pharo - updates'!
update14030
	"self new update14030"
	self withUpdateLog: ' Issue 4506:	Revert to old Transcript. Two
	http://code.google.com/p/pharo/issues/detail?id=4506'.
	self loadTogether: self script295 merge: false.
	self flushCaches.
! !
