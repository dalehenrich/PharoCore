
!ScriptLoader methodsFor: 'pharo - updates'!
update14068
	"self new update14068"
	self withUpdateLog: 'Issue 4563:	should not we remove deprecated 1.2 ?	
	http://code.google.com/p/pharo/issues/detail?id=4563'.
	self loadTogether: self script333 merge: false.
	(MCPackage named: 'Deprecated12') unload.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
