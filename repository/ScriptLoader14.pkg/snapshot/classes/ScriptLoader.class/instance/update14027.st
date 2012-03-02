
!ScriptLoader methodsFor: 'pharo - updates'!
update14027
	"self new update14027"
	self withUpdateLog: 'Issue 4502:	Fix for TimeProfileBrowser
	http://code.google.com/p/pharo/issues/detail?id=4502
'.
	self loadTogether: self script292 merge: false.
	self flushCaches.
! !
