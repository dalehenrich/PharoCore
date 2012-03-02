
!ScriptLoader methodsFor: 'pharo - updates'!
update14315
	"self new update14315"
	self withUpdateLog: '-  Issue 5247:	add Transcript package to the list of kernel and core packages. Thanks Pavel Krivanek.
	http://code.google.com/p/pharo/issues/detail?id=5247'.
	self loadTogether: self script576 merge: false.
	self flushCaches.
! !
