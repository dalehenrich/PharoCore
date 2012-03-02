
!ScriptLoader methodsFor: 'pharo - updates'!
update14211
	"self new update14211"
	self withUpdateLog: 'Issue 4937:	Squeaksource 3 place for gofer
	http://code.google.com/p/pharo/issues/detail?id=4937
	
Issue 4934:	Workspace Watch It menu entry action is broken
	http://code.google.com/p/pharo/issues/detail?id=4934
	
Issue 4936:	Temporarily switching to the non-interactive UIManager
	http://code.google.com/p/pharo/issues/detail?id=4936'.
	self loadTogether: self script474 merge: false.
	self flushCaches.
! !
