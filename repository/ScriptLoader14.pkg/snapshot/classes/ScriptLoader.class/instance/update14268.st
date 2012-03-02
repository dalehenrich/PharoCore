
!ScriptLoader methodsFor: 'pharo - updates'!
update14268
	"self new update14268"
	self withUpdateLog: 'Issue 5126:	french Date format. Another try to test the changes in update streamer.'.
	self loadTogether: self script531 merge: false.
	self flushCaches.
! !
