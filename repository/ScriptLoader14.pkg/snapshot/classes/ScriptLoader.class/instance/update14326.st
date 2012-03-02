
!ScriptLoader methodsFor: 'pharo - updates'!
update14326
	"self new update14326"
	self withUpdateLog: 'Issue 5227:	NonInteractiveUIManager should implement #syntaxErrorNotificationDefaultAction:
		http://code.google.com/p/pharo/issues/detail?id=5227'.
	self loadTogether: self script587 merge: false.
	self flushCaches.
! !
