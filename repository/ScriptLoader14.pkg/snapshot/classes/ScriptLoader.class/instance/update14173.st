
!ScriptLoader methodsFor: 'pharo - updates'!
update14173
	"self new update14173"
	self withUpdateLog: 'Issue 4863:	Fix Changes in Monticello
	http://code.google.com/p/pharo/issues/detail?id=4863
Issue 4865:	Fix of Abstract Tool
	http://code.google.com/p/pharo/issues/detail?id=4865
Issue 3782:	Pangrams
	http://code.google.com/p/pharo/issues/detail?id=3782
Issue 4868:	Improve TickList
	http://code.google.com/p/pharo/issues/detail?id=4868'.
	self loadTogether: self script436 merge: false.
	self flushCaches.
! !
