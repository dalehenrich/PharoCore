
!ScriptLoader methodsFor: 'pharo - updates'!
update14228
	"self new update14228"
	self withUpdateLog: ' Issue 4903:	New version of Zinc
	http://code.google.com/p/pharo/issues/detail?id=4903'.
	self loadTogether: self script491 merge: false.
	self flushCaches.
! !
