
!ScriptLoader methodsFor: 'pharo - updates'!
update14302
	"self new update14302"
	self withUpdateLog: 'Issue 5232:	CheckButton is fully clickable
	http://code.google.com/p/pharo/issues/detail?id=5232
Issue 5231:	Mini fix in CheckButtonMorph
	http://code.google.com/p/pharo/issues/detail?id=5231
Issue 5235:	A very little fix to ensure Checkboxes take the keyboard focus when clicked
	http://code.google.com/p/pharo/issues/detail?id=5235
Issue 5230:	removePseudoContext Part2
	http://code.google.com/p/pharo/issues/detail?id=5230'.
	self loadTogether: self script563 merge: false.
	Smalltalk removeClassNamed: #PseudoContext.
	self flushCaches.
! !
