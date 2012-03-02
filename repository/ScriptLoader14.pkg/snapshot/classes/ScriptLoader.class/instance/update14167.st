
!ScriptLoader methodsFor: 'pharo - updates'!
update14167
	"self new update14167"
	self withUpdateLog: 'Issue 4861:	Enhance TickDialog
	http://code.google.com/p/pharo/issues/detail?id=4861'.
	self loadTogether: self script430 merge: false.
	self flushCaches.
! !
