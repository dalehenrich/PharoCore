
!ScriptLoader methodsFor: 'pharo - updates'!
update14224
	"self new update14224"
	self withUpdateLog: 'Issue 4981:	New implementation of process-specific storage
	http://code.google.com/p/pharo/issues/detail?id=4981
Issue 4960:	Fix openInWorld method
	http://code.google.com/p/pharo/issues/detail?id=4960
Issue 4980:	UUID>>< has a halt
	http://code.google.com/p/pharo/issues/detail?id=4980'.
	self loadTogether: self script487 merge: false.
	self flushCaches.
! !
