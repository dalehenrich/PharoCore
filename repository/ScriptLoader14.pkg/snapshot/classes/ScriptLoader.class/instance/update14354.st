
!ScriptLoader methodsFor: 'pharo - updates'!
update14354
	"self new update14354"
	self withUpdateLog: 'Issue 5141:	We should remove InputEventPollingFetcher
	http://code.google.com/p/pharo/issues/detail?id=5141'.
	self loadTogether: self script615 merge: false.
	self flushCaches.
! !
