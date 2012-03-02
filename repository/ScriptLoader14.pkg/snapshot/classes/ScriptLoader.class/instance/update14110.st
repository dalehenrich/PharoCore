
!ScriptLoader methodsFor: 'pharo - updates'!
update14110
	"self new update14110"
	self withUpdateLog: 'Issue 4642:	FinderUI>>compileSource: aString notifying: aController
	http://code.google.com/p/pharo/issues/detail?id=4642'.
	self loadTogether: self script374 merge: false.
	self flushCaches.
! !
