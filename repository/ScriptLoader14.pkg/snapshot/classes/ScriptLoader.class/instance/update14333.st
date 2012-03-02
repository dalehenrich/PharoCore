
!ScriptLoader methodsFor: 'pharo - updates'!
update14333
	"self new update14333"
	self withUpdateLog: '-  Issue 5281:	Refactor in LazyListMorph. Thanks Benjamin van Ryseghem.
		http://code.google.com/p/pharo/issues/detail?id=5281'.
	self loadTogether: self script594 merge: false.
	self flushCaches.
! !
