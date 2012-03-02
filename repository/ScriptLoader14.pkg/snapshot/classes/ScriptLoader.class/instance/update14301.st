
!ScriptLoader methodsFor: 'pharo - updates'!
update14301
	"self new update14301"
	self withUpdateLog: 'Issue 5226:	Add 2 methods in Browser API to allow to easily register groups
	http://code.google.com/p/pharo/issues/detail?id=5226
Issue 5225:	Remove PseudoContext
	http://code.google.com/p/pharo/issues/detail?id=5225'.
	self loadTogether: self script562 merge: false.
	self flushCaches.
! !
