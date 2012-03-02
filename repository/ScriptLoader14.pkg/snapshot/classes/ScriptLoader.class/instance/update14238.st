
!ScriptLoader methodsFor: 'pharo - updates'!
update14238
	"self new update14238"
	self withUpdateLog: 'Issue 4998:	ContextPart>>#runUntilErrorOrReturnFrom:
	(for testing)
	http://code.google.com/p/pharo/issues/detail?id=4998
Issue 4994:	Two failing test in ProcessTest
	http://code.google.com/p/pharo/issues/detail?id=4994
Issue 5014:	zn updates
	http://code.google.com/p/pharo/issues/detail?id=5014'.
	self loadTogether: self script501 merge: false.
	self flushCaches.
! !
