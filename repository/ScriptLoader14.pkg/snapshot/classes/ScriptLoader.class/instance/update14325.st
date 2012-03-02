
!ScriptLoader methodsFor: 'pharo - updates'!
update14325
	"self new update14325"
	self withUpdateLog: 'Issue 4647:	Update Filesystem Dialogs to use the new FS implementation
		http://code.google.com/p/pharo/issues/detail?id=4647'.
	self loadTogether: self script586 merge: false.
	self flushCaches.
! !
