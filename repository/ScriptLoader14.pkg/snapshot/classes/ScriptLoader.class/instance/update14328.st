
!ScriptLoader methodsFor: 'pharo - updates'!
update14328
	"self new update14328"
	self withUpdateLog: 'Issue 5277:	undeclared in FileList: volList
	http://code.google.com/p/pharo/issues/detail?id=5277
StartupPreferences shouldnt lauch script when you save
	http://code.google.com/p/pharo/issues/detail?id=5275	'.
	self loadTogether: self script589 merge: false.
	self flushCaches.
! !
