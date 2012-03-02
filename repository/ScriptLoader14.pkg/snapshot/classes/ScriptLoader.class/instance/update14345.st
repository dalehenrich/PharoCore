
!ScriptLoader methodsFor: 'pharo - updates'!
update14345
	"self new update14345"
	self withUpdateLog: 'Issue 5343:	Debugger broken
	http://code.google.com/p/pharo/issues/detail?id=5343
Issue 5342:	Do not unload Graphics Ressources on #cleanUpForProduction
	http://code.google.com/p/pharo/issues/detail?id=5342'.
	self loadTogether: self script606 merge: false.
	self flushCaches.
! !
