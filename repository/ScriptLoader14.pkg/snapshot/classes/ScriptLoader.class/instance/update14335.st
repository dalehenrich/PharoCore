
!ScriptLoader methodsFor: 'pharo - updates'!
update14335
	"self new update14335"
	self withUpdateLog: 'Issue 5299:	Yet another Zn update
	http://code.google.com/p/pharo/issues/detail?id=5299'.
	self loadTogether: self script596 merge: false.
	ZnMimeType initialize.
	self flushCaches.
! !
