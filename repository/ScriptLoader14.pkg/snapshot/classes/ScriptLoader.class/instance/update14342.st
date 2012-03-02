
!ScriptLoader methodsFor: 'pharo - updates'!
update14342
	"self new update14342"
	self withUpdateLog: 'Issue 5327:	cannot open workspace with contents from a file
	http://code.google.com/p/pharo/issues/detail?id=5327
	
Issue 5337:	Fix in AbstractTool
	http://code.google.com/p/pharo/issues/detail?id=5337
	
Issue 5335:	(Color fromString: #RED) broken	
	http://code.google.com/p/pharo/issues/detail?id=5335'.
	self loadTogether: self script603 merge: false.
	self flushCaches.
! !
