
!ScriptLoader methodsFor: 'pharo - updates'!
update14250
	"self new update14250"
	self withUpdateLog: 'Issue 5064:	remove useless stripe behavior from ProgressBarMorph
	http://code.google.com/p/pharo/issues/detail?id=5064
Issue 4998:	ContextPart>>#runUntilErrorOrReturnFrom: 
	http://code.google.com/p/pharo/issues/detail?id=4998
	(2nd try)
	'.
	self loadTogether: self script513 merge: false.
	self flushCaches.
! !
