
!ScriptLoader methodsFor: 'pharo - updates'!
update14143
	"self new update14143"
	self withUpdateLog: 'NewParagraph and MultiNewParagraph should be merged
	http://code.google.com/p/pharo/issues/detail?id=3370'.
	self loadTogether: self script407 merge: false.
	self flushCaches.
! !
