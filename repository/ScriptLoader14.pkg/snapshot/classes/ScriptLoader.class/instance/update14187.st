
!ScriptLoader methodsFor: 'pharo - updates'!
update14187
	"self new update14187"
	self withUpdateLog: 'Issue 4883:	Rename ATestHasBeenRun into TestSuiteEnded
	http://code.google.com/p/pharo/issues/detail?id=4883'.
	self loadTogether: self script450 merge: false.
	self flushCaches.
! !
