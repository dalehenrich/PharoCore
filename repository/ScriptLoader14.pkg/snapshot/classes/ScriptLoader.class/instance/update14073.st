
!ScriptLoader methodsFor: 'pharo - updates'!
update14073
	"self new update14073"
	self withUpdateLog: 'Issue 4574:	ChangedMessageSet is not referenced
	http://code.google.com/p/pharo/issues/detail?id=4574
Issue 4569:	load updates just loads the last update?
	http://code.google.com/p/pharo/issues/detail?id=4569'.
	self loadTogether: self script338 merge: false.
		ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
