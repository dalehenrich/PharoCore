
!ScriptLoader methodsFor: 'pharo - updates'!
update14145
	"self new update14145"
	self withUpdateLog: 'Issue 2986:	DemoMode should not change Fonts only sizes
	http://code.google.com/p/pharo/issues/detail?id=2986'.
	self loadTogether: self script409 merge: false.
	self flushCaches.
! !
