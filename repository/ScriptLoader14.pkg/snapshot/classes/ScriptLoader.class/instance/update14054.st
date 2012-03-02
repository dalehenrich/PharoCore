
!ScriptLoader methodsFor: 'pharo - updates'!
update14054
	"self new update14054"
	self withUpdateLog: '-  Issue 4534:	leftShiftDown is obsolete.
	http://code.google.com/p/pharo/issues/detail?id=4534'.
	self loadTogether: self script319 merge: false.
	self flushCaches.
! !
