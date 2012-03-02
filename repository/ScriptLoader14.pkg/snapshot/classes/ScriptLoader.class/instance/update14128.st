
!ScriptLoader methodsFor: 'pharo - updates'!
update14128
	"self new update14128"
	self withUpdateLog: 'Issue 1686:	resetTo:1 in newFrom: aCollection
	http://code.google.com/p/pharo/issues/detail?id=1686
Issue 4781:	more poly fixes
	http://code.google.com/p/pharo/issues/detail?id=4781'.
	self loadTogether: self script392 merge: false.
	self flushCaches.
! !
