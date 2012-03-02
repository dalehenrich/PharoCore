
!ScriptLoader methodsFor: 'pharo - updates'!
update14362
	"self new update14362"
	self withUpdateLog: 'Issue 5402:	AbstractTool fix
	http://code.google.com/p/pharo/issues/detail?id=5402
	
Issue 5403:	remove some more references of #blockCopy:
	http://code.google.com/p/pharo/issues/detail?id=5403'.
	self loadTogether: self script623 merge: false.
	self flushCaches.
! !
