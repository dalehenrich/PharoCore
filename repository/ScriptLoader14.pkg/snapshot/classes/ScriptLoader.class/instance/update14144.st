
!ScriptLoader methodsFor: 'pharo - updates'!
update14144
	"self new update14144"
	self withUpdateLog: 'Issue 4806:	Do not do double package clean on #cleanUpForRelease
	http://code.google.com/p/pharo/issues/detail?id=4806

Issue 4799:	AbstractTool fix
	http://code.google.com/p/pharo/issues/detail?id=4799'.
	self loadTogether: self script408 merge: false.
	self flushCaches.
! !
