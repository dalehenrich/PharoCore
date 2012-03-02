
!ScriptLoader methodsFor: 'pharo - updates'!
update14010
	"self new update14010"
	self withUpdateLog: '-  Issue 4439:	Allow cherry-picking when merging. Second part removing MCConflict. 
	http://code.google.com/p/pharo/issues/detail?id=4439'.
	self loadTogether: self script275 merge: false.
	self flushCaches.
! !
