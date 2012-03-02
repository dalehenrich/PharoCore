
!ScriptLoader methodsFor: 'pharo - updates'!
update14242
	"self new update14242"
	self withUpdateLog: 'Issue 1817:	[etoy] Should remove project
	http://code.google.com/p/pharo/issues/detail?id=1817
'.
	self loadTogether: self script505 merge: false.
	self flushCaches.
! !
