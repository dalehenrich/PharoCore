
!ScriptLoader methodsFor: 'pharo - updates'!
update14179
	"self new update14179"
	self withUpdateLog: 'Issue 4876:	Add Announcement on Tests (Part1)
	http://code.google.com/p/pharo/issues/detail?id=4876'.
	self loadTogether: self script442 merge: false.
	self flushCaches.
! !
