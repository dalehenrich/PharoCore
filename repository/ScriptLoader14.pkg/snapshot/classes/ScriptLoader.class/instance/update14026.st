
!ScriptLoader methodsFor: 'pharo - updates'!
update14026
	"self new update14026"
	ScriptLoader new deletePackage: 'Graphics-Support'.
ScriptLoader new deletePackage: 'System-SourceAndChangeFile'.
	self withUpdateLog: 'Issue 4496:	Package Graphics-Support is empty
	http://code.google.com/p/pharo/issues/detail?id=4496
Issue 4497:	package System-SourceAndChangeFile is empty
	http://code.google.com/p/pharo/issues/detail?id=4497'.
	self loadTogether: self script291 merge: false.
	self flushCaches.
! !
