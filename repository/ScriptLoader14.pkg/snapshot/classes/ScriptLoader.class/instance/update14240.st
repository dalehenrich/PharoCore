
!ScriptLoader methodsFor: 'pharo - updates'!
update14240
	"self new update14240"
	self withUpdateLog: 'Issue 5037:	Remove the failing CompiledMethodTest>>testAuthor
	http://code.google.com/p/pharo/issues/detail?id=5037
Issue 3529:	TextMorph>>releaseCachedState creates a paragraph which causes a Subscript out of bounds in an internal RunArray
	http://code.google.com/p/pharo/issues/detail?id=3529
Issue 3621:	The S in fullscreen should not be capitalized
	http://code.google.com/p/pharo/issues/detail?id=3621'.
	self loadTogether: self script503 merge: false.
	self flushCaches.
! !
