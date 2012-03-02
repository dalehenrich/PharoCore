
!ScriptLoader methodsFor: 'pharo - updates'!
update14327
	"self new update14327"
	self withUpdateLog: 'Issue 5273:	Dragging files on the window (e.g. .cs) not working
	http://code.google.com/p/pharo/issues/detail?id=5273
Issue 5271:	Bug in checkbox
	http://code.google.com/p/pharo/issues/detail?id=5271'.
	self loadTogether: self script588 merge: false.
	self flushCaches.
! !
