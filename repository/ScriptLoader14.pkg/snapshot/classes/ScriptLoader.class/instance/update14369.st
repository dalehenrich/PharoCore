
!ScriptLoader methodsFor: 'pharo - updates'!
update14369
	"self new update14369"
	self withUpdateLog: 'Issue 5331:	use the glamour style for pretty print
	http://code.google.com/p/pharo/issues/detail?id=5331

Issue 5396:	Deprecate TTMorph classes
	http://code.google.com/p/pharo/issues/detail?id=5396'.
	self loadTogether: self script630 merge: false.
	SHTextStylerST80 initialize.
	self flushCaches.
! !
