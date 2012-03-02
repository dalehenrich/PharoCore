
!ScriptLoader methodsFor: 'pharo - updates'!
update14320
	"self new update14320"
	self withUpdateLog: 'Issue 4813:	MethodWrapper Fixes
	(Part 1)
	http://code.google.com/p/pharo/issues/detail?id=4813'.
	self loadTogether: self script581 merge: false.
	self flushCaches.
! !
