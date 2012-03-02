
!ScriptLoader methodsFor: 'pharo - updates'!
update14213
	"self new update14213"
	self withUpdateLog: 'Issue 4907:	Check sqrt extensions
	http://code.google.com/p/pharo/issues/detail?id=4907'.
	self loadTogether: self script476 merge: false.
	self flushCaches.
! !
