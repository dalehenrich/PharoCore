
!ScriptLoader methodsFor: 'pharo - updates'!
update14063
	"self new update14063"
	self withUpdateLog: 'Issue 4533:	Transcript patch for the Kernel image
	http://code.google.com/p/pharo/issues/detail?id=4533
Issue 4554:	MorphicUIManager does not implement #confirm:label:
	http://code.google.com/p/pharo/issues/detail?id=4554'.
	self loadTogether: self script328 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
