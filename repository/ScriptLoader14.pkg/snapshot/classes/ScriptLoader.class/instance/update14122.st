
!ScriptLoader methodsFor: 'pharo - updates'!
update14122
	"self new update14122"
	self withUpdateLog: '- Issue 4758:	Managing ring comments in browsers. Thanks Veronica Uquillas-Gomez.
	http://code.google.com/p/pharo/issues/detail?id=4758
- Issue 4737:	Typo fixed in a comment on Behavior
	http://code.google.com/p/pharo/issues/detail?id=4737
- Issue 4733:	SystemNavigation>>allSendersOf: returns duplicates
	http://code.google.com/p/pharo/issues/detail?id=4733
- Issue 4698:	IconicButton improvement. 
	http://code.google.com/p/pharo/issues/detail?id=4698'.
	self loadTogether: self script386 merge: false.
	self flushCaches.
! !
