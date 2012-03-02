
!ScriptLoader methodsFor: 'pharo - updates'!
update14126
	"self new update14126"
	self withUpdateLog: 'Issue 3329:	Object>>closeTo:
	http://code.google.com/p/pharo/issues/detail?id=3329
Issue 4740:	Test for workspace
	http://code.google.com/p/pharo/issues/detail?id=4740
Issue 4415:	asNonFraction
	http://code.google.com/p/pharo/issues/detail?id=4415'.
	self loadTogether: self script390 merge: false.
	self flushCaches.
! !
