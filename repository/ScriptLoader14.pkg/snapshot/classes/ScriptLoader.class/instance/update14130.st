
!ScriptLoader methodsFor: 'pharo - updates'!
update14130
	"self new update14130"
	self withUpdateLog: 'Issue 4700:	hasTraitComposition
	http://code.google.com/p/pharo/issues/detail?id=4700

Issue 709:	Debugger highlight bug	
	http://code.google.com/p/pharo/issues/detail?id=709
	'.
	self loadTogether: self script394 merge: false.
	self flushCaches.
! !
