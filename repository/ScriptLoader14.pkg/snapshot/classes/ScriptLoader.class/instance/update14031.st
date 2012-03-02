
!ScriptLoader methodsFor: 'pharo - updates'!
update14031
	"self new update14031"
	self withUpdateLog: ' Issue 4506:	Revert to old Transcript. Three
	http://code.google.com/p/pharo/issues/detail?id=4506'.
	self loadTogether: self script296 merge: false.
	ThreadSafeTranscript install.
	self flushCaches.
! !
