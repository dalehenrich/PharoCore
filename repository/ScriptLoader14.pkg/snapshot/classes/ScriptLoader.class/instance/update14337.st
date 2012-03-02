
!ScriptLoader methodsFor: 'pharo - updates'!
update14337
	"self new update14337"
	self withUpdateLog: 'Issue 5281:	Refactor in LazyListMorph
	http://code.google.com/p/pharo/issues/detail?id=5281
Issue 5313:	Browse a method category in a browser raises a DNU
	http://code.google.com/p/pharo/issues/detail?id=5313
'.
	self loadTogether: self script598 merge: false.
	self flushCaches.
! !
