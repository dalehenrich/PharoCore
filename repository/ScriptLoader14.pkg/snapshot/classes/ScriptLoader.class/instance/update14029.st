
!ScriptLoader methodsFor: 'pharo - updates'!
update14029
	"self new update14029"
	self withUpdateLog: ' Issue 4506:	Revert to old Transcript
	http://code.google.com/p/pharo/issues/detail?id=4506'.
	self loadTogether: self script294 merge: false.
	self flushCaches.
! !
