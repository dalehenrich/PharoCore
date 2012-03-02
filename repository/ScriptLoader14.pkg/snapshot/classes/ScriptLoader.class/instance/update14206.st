
!ScriptLoader methodsFor: 'pharo - updates'!
update14206
	"self new update14206"
	self withUpdateLog: 'Issue 4908:	LinkedList collect
	http://code.google.com/p/pharo/issues/detail?id=4908
	
'.
	self loadTogether: self script469 merge: false.
	self flushCaches.
! !
