
!ScriptLoader methodsFor: 'pharo - updates'!
update14098
	"self new update14098"
	self withUpdateLog: 'Issue 4655:	Additional Socket woes
	http://code.google.com/p/pharo/issues/detail?id=4655		'.
	self loadTogether: self script362 merge: false.
	self flushCaches.
! !
