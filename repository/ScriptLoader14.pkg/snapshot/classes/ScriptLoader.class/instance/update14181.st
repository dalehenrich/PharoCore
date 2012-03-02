
!ScriptLoader methodsFor: 'pharo - updates'!
update14181
	"self new update14181"
	self withUpdateLog: 'Issue 4636:	allowUnderscoreAsAssignment broken
	http://code.google.com/p/pharo/issues/detail?id=4636'.
	self loadTogether: self script444 merge: false.
	self flushCaches.
! !
