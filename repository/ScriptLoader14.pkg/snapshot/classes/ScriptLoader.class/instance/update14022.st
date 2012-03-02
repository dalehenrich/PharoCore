
!ScriptLoader methodsFor: 'pharo - updates'!
update14022
	"self new update14022"
	self withUpdateLog: 'Issue 4475:	Senders button of finder tool DNU browseSendersOf:
	http://code.google.com/p/pharo/issues/detail?id=4475
Issue 4457:	Polymorph-ToolBuilder package need to be removed
	http://code.google.com/p/pharo/issues/detail?id=4457
	(package not yet removed, just cleanup)'.
	self loadTogether: self script287 merge: false.
	self flushCaches.
! !
