
!ScriptLoader methodsFor: 'pharo - updates'!
update14225
	"self new update14225"
	self withUpdateLog: 'Issue 4992:	Small Morph cleanup (#tempCommand)
	http://code.google.com/p/pharo/issues/detail?id=4992
Issue 4991:	Move ModifiedMethodEvent out of System Debugging
	http://code.google.com/p/pharo/issues/detail?id=4991
Issue 4989:	SubscriptionRegistry>>deliver: anAnnouncement
	http://code.google.com/p/pharo/issues/detail?id=4989'.
	self loadTogether: self script488 merge: false.
	self flushCaches.
! !
