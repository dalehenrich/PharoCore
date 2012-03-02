
!ScriptLoader methodsFor: 'pharo - updates'!
update14321
	"self new update14321"
	self withUpdateLog: 'Issue 4813:	MethodWrapper Fixes
	(Part 2)
	http://code.google.com/p/pharo/issues/detail?id=4813'.
	self loadTogether: self script582 merge: false.
	self flushCaches.
! !
