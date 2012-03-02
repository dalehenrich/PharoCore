
!ScriptLoader methodsFor: 'pharo - updates'!
update14019
	"self new update14019"
	self withUpdateLog: ' Issue 4391:	Support grouping windows as tab
		http://code.google.com/p/pharo/issues/detail?id=4391'.
	self loadTogether: self script284 merge: false.
	self flushCaches.
! !
