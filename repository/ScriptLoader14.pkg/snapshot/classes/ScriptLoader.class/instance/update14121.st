
!ScriptLoader methodsFor: 'pharo - updates'!
update14121
	"self new update14121"
	self withUpdateLog: 'Issue 4757:	remove #StandardToolSet from privCleanUnloadMethods
	http://code.google.com/p/pharo/issues/detail?id=4757
Issue 4724:	polymorph fixes
	http://code.google.com/p/pharo/issues/detail?id=4724
Issue 4643:	Inspector>>fieldListMenu: aMenu
	http://code.google.com/p/pharo/issues/detail?id=4643'.
	self loadTogether: self script385 merge: false.
	self flushCaches.
! !
