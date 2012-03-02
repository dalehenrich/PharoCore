
!ScriptLoader methodsFor: 'pharo - updates'!
update14235
	"self new update14235"
	self withUpdateLog: 'Issue 5019:	testSourceByIdentifierEncoding dependent on Network UUID
	http://code.google.com/p/pharo/issues/detail?id=5019

Issue 5018:	deprecated #addLast:times:
	http://code.google.com/p/pharo/issues/detail?id=5018

Issue 5012:	[ENH]: UITheme>>exampleGroups doIt comment
	http://code.google.com/p/pharo/issues/detail?id=5012

Issue 3702:	squeeze out a bit more speed from TextDiffBuilder
	http://code.google.com/p/pharo/issues/detail?id=3702'.
	self loadTogether: self script498 merge: false.
	self flushCaches.
! !
