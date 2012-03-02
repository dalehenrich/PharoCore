
!ScriptLoader methodsFor: 'pharo - updates'!
update14322
	"self new update14322"
	self withUpdateLog: 'Issue 5170:	DNU Inspector>>arrowKey:from:
	http://code.google.com/p/pharo/issues/detail?id=5170
Issue 5252:	Cannot right click
	http://code.google.com/p/pharo/issues/detail?id=5252
Issue 4650:	Strange $ evaluates to Character arrowUp
	http://code.google.com/p/pharo/issues/detail?id=4650'.
	self loadTogether: self script583 merge: false.
	self flushCaches.
! !
