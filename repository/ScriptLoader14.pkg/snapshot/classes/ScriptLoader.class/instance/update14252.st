
!ScriptLoader methodsFor: 'pharo - updates'!
update14252
	"self new update14252"
	self withUpdateLog: 'Issue 5069:	Do a DebuggerMethodMap initialize in the postscript
	http://code.google.com/p/pharo/issues/detail?id=5069

Issue 4942:	Failing Test: GoferApiTest>>#testRepositoryErrors
	http://code.google.com/p/pharo/issues/detail?id=4942

Issue 4938:	Failing Tests:FSPlatformResolverTest
	http://code.google.com/p/pharo/issues/detail?id=4938
	
Issue 4567:	Ring fix
	http://code.google.com/p/pharo/issues/detail?id=4567'.
	self loadTogether: self script515 merge: false.
	DebuggerMethodMap compileAll.
DebuggerMethodMap initialize.
	self flushCaches.
! !
