
!ScriptLoader methodsFor: 'pharo - updates'!
update14251
	"self new update14251"
	self withUpdateLog: 'Issue 5070:	Failing test: KernelTests.Objects.SelfEvaluatingObjectTest.testArray
	http://code.google.com/p/pharo/issues/detail?id=5070
Issue 5069:	Do a DebuggerMethodMap initialize in the postscript
	http://code.google.com/p/pharo/issues/detail?id=5069'.
	self loadTogether: self script514 merge: false.
	DebuggerMethodMap initialize.
	self flushCaches.
! !
