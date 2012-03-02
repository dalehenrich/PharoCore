
!ScriptLoader methodsFor: 'pharo - updates'!
update14295
	"self new update14295"
	self withUpdateLog: 'Issue 5215:	FailingTest: Uncategorized Method
	http://code.google.com/p/pharo/issues/detail?id=5215
Issue 5216:	Failing Test: Obsolete classes
	http://code.google.com/p/pharo/issues/detail?id=5216
Issue 5212:	Fix CompiledMethod>>#browse
	http://code.google.com/p/pharo/issues/detail?id=5212
- do #cleanUpForRelease'.
	self loadTogether: self script558 merge: false.
	Smalltalk removeClassNamed: #RBSemanticAnnotator.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
