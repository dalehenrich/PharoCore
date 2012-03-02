
!ScriptLoader methodsFor: 'pharo - updates'!
update14210
	"self new update14210"
	self withUpdateLog: 'Issue 3432:	Color>>fromString fix
	http://code.google.com/p/pharo/issues/detail?id=3432'.
	self loadTogether: self script473 merge: false.
	self flushCaches.
! !
