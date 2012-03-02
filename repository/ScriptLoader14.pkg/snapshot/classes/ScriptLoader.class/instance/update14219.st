
!ScriptLoader methodsFor: 'pharo - updates'!
update14219
	"self new update14219"
	self withUpdateLog: ' - Issue 4956:	Optimized RunArray. Thanks Nicolas Cellier.
	http://code.google.com/p/pharo/issues/detail?id=4956'.
	self loadTogether: self script482 merge: false.
	self flushCaches.
! !
