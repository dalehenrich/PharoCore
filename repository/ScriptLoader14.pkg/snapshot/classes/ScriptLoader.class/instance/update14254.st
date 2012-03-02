
!ScriptLoader methodsFor: 'pharo - updates'!
update14254
	"self new update14254"
	self withUpdateLog: 'Issue 5063:	Zinc uses default encoding of utf-8 when encoding url safe encoded strings
	http://code.google.com/p/pharo/issues/detail?id=5063'.
	self loadTogether: self script517 merge: false.
	self flushCaches.
! !
