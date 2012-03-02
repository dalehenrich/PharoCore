
!ScriptLoader methodsFor: 'pharo - updates'!
update14348
	"self new update14348"
	self withUpdateLog: 'Issue 5309:	StartupPreferences new feature
	http://code.google.com/p/pharo/issues/detail?id=5309
Issue 5188:	Fast Drag doesnt work anymore
	http://code.google.com/p/pharo/issues/detail?id=5188
Issue 5349:	remove findOriginalChangeSet
	http://code.google.com/p/pharo/issues/detail?id=5349'.
	self loadTogether: self script609 merge: false.
	self flushCaches.
! !
