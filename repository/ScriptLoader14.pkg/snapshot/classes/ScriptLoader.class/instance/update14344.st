
!ScriptLoader methodsFor: 'pharo - updates'!
update14344
	"self new update14344"
	self withUpdateLog: 'Issue 5341:	update #cleanUpForProduction
	http://code.google.com/p/pharo/issues/detail?id=5341'.
	self loadTogether: self script605 merge: false.
	self flushCaches.
! !
