
!ScriptLoader methodsFor: 'pharo - updates'!
update14246
	"self new update14246"
	self withUpdateLog: 'Issue 4998:	ContextPart>>#runUntilErrorOrReturnFrom: 
	http://code.google.com/p/pharo/issues/detail?id=4998
	
(reverted)'.
	self loadTogether: self script509 merge: false.
	self flushCaches.
! !
