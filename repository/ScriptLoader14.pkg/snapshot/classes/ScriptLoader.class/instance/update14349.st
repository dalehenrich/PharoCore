
!ScriptLoader methodsFor: 'pharo - updates'!
update14349
	"self new update14349"
	self withUpdateLog: 'Issue 5351:	 ProfStef - syntax highlighting
	http://code.google.com/p/pharo/issues/detail?id=5351'.
	self loadTogether: self script610 merge: false.
	self flushCaches.
! !
