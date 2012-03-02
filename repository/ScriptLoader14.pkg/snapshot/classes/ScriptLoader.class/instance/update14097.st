
!ScriptLoader methodsFor: 'pharo - updates'!
update14097
	"self new update14097"
	self withUpdateLog: 'Issue 4635:	Two failing tests in FS
	http://code.google.com/p/pharo/issues/detail?id=4635'.
	self loadTogether: self script361 merge: false.
	self flushCaches.
! !
