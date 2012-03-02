
!ScriptLoader methodsFor: 'pharo - updates'!
update14153
	"self new update14153"
	self withUpdateLog: 'Issue 2986:	DemoModeshould not change Fonts only sizes
		http://code.google.com/p/pharo/issues/detail?id=2986'.
	self loadTogether: self script417 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
