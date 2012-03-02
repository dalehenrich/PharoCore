
!ScriptLoader methodsFor: 'pharo - updates'!
update14343
	"self new update14343"
	self withUpdateLog: 'Issue 5340:	Deprecate SparseXTable
	http://code.google.com/p/pharo/issues/detail?id=5340
Issue 5339:	Finder find pragmas
	http://code.google.com/p/pharo/issues/detail?id=5339'.
	self loadTogether: self script604 merge: false.
	self flushCaches.
! !
