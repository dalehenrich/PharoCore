
!ScriptLoader methodsFor: 'pharo - updates'!
update14084
	"self new update14084"
	self withUpdateLog: 'Issue 4619:	Fixing SystemNavigationTest
	http://code.google.com/p/pharo/issues/detail?id=4619'.
	self loadTogether: self script349 merge: false.
	self flushCaches.
! !
