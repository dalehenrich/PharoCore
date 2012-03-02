
!ScriptLoader methodsFor: 'pharo - updates'!
update14236
	"self new update14236"
	self withUpdateLog: 'Issue 5024:	incomplete SUnit
	http://code.google.com/p/pharo/issues/detail?id=5024
Issue 5022:	UITheme uncategorized method
	http://code.google.com/p/pharo/issues/detail?id=5022'.
	self loadTogether: self script499 merge: false.
	self flushCaches.
! !
