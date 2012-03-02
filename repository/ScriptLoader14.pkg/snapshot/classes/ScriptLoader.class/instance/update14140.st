
!ScriptLoader methodsFor: 'pharo - updates'!
update14140
	"self new update14140"
	self withUpdateLog: 'Issue 4796:	Fix ClassSearch
	http://code.google.com/p/pharo/issues/detail?id=4796
Issue 4794:	New method in AbstractTool
	http://code.google.com/p/pharo/issues/detail?id=4794
Issue 4789:	Improve the way morphs communicate with model
	http://code.google.com/p/pharo/issues/detail?id=4789'.
	self loadTogether: self script404 merge: false.
	self flushCaches.
! !
