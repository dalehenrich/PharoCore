
!ScriptLoader methodsFor: 'pharo - updates'!
update14105
	"self new update14105"
	self withUpdateLog: '- Issue 4640:	remove WordArrayForSegment.
	http://code.google.com/p/pharo/issues/detail?id=4640'.
	self loadTogether: self script369 merge: false.
	self flushCaches.
! !
