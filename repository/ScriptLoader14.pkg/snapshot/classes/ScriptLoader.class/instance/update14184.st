
!ScriptLoader methodsFor: 'pharo - updates'!
update14184
	"self new update14184"
	self withUpdateLog: 'Issue 4880:	NewTextMorph and TextComposer accepts a one line text
	http://code.google.com/p/pharo/issues/detail?id=4880'.
	self loadTogether: self script447 merge: false.
	self flushCaches.
! !
