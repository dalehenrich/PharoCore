
!ScriptLoader methodsFor: 'pharo - updates'!
update14028
	"self new update14028"
	self withUpdateLog: 'Issue 4503:	Suggested fix using directly the Display canvas, and some low-level drawing
	http://code.google.com/p/pharo/issues/detail?id=4503'.
	self loadTogether: self script293 merge: false.
	self flushCaches.
! !
