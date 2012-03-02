
!ScriptLoader methodsFor: 'pharo - updates'!
update14171
	"self new update14171"
	self withUpdateLog: 'Issue 3236:	Cuis DateAndTime Enhancement (Part3)
	http://code.google.com/p/pharo/issues/detail?id=3236
Issue 4845:	TestRunner: Show the currently running TestCase with selector and class
	http://code.google.com/p/pharo/issues/detail?id=4845'.
	self loadTogether: self script434 merge: false.
	self flushCaches.
! !
