
!ScriptLoader methodsFor: 'pharo - updates'!
update14092
	"self new update14092"
	self withUpdateLog: 'Issue 4639:	Package System-SourceAndChangeFile is empty
	http://code.google.com/p/pharo/issues/detail?id=4639
Issue 4641:	Small ImageSegments related cleanup
	http://code.google.com/p/pharo/issues/detail?id=4641'.
	self loadTogether: self script356 merge: false.
	ScriptLoader new deletePackage: 'System-SourceAndChangeFile'.
	self flushCaches.
! !
