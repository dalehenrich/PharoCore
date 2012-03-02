
!ScriptLoader methodsFor: 'pharo - updates'!
update14363
	"self new update14363"
	self withUpdateLog: 'Issue 5405:	Little Refactor in AbstractTool>>#RemoveClasses:
	http://code.google.com/p/pharo/issues/detail?id=5405
Issue 4549:	Unable to open the Test Runner menu on OS X
	http://code.google.com/p/pharo/issues/detail?id=4549
Issue 5359:	Class Search popup shortcut to open in a new browser
	http://code.google.com/p/pharo/issues/detail?id=5359'.
	self loadTogether: self script624 merge: false.
	self flushCaches.
! !
