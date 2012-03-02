
!ScriptLoader methodsFor: 'pharo - updates'!
update14158
	"self new update14158"
	self withUpdateLog: 'Issue 4833:	Pharo Kernel patches
	http://code.google.com/p/pharo/issues/detail?id=4833'.
	self loadTogether: self script422 merge: false.
	self flushCaches.
! !
