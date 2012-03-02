
!ScriptLoader methodsFor: 'pharo - updates'!
update14077
	"self new update14077"
	self withUpdateLog: '- Issue 4598:	Improve MCBrowser search. Thanks Camillo.
	http://code.google.com/p/pharo/issues/detail?id=4598
- Issue 4600:	Add Search Morph	
	http://code.google.com/p/pharo/issues/detail?id=4600. Thanks Camillo.
- Issue 4533:	Transcript patch for the Kernel image
	http://code.google.com/p/pharo/issues/detail?id=4533. Thanks Pavel Krivanek'.
	self loadTogether: self script342 merge: false.
	self flushCaches.
! !
