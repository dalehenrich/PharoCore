
!ScriptLoader methodsFor: 'pharo - updates'!
update14180
	"self new update14180"
	self withUpdateLog: 'Issue 4876:	Add Announcement on Tests (Part2)
	http://code.google.com/p/pharo/issues/detail?id=4876
Issue 4876:	Add Announcement on Tests
	http://code.google.com/p/pharo/issues/detail?id=4876
Issue 4874:	syler missplaced... left over
	http://code.google.com/p/pharo/issues/detail?id=4874'.
	self loadTogether: self script443 merge: false.
	self flushCaches.
! !
