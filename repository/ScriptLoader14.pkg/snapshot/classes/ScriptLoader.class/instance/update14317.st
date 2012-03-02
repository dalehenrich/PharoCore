
!ScriptLoader methodsFor: 'pharo - updates'!
update14317
	"self new update14317"
	self withUpdateLog: 'Issue 5248:	Undeclared refs in 14315
	http://code.google.com/p/pharo/issues/detail?id=5248
Issue 5167:	Fix weak finalization thrashing
	- another fix
	http://code.google.com/p/pharo/issues/detail?id=5167'.
	self loadTogether: self script578 merge: false.
	self flushCaches.
! !
