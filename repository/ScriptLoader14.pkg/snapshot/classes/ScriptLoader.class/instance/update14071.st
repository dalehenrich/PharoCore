
!ScriptLoader methodsFor: 'pharo - updates'!
update14071
	"self new update14071"
	self withUpdateLog: 'Issue 4582:	Failing tests: CompiledMethodTest restReadField and testWriteField
	http://code.google.com/p/pharo/issues/detail?id=4582
Issue 4583:	Undeclared in #allLocalCallsOn:ofClass:
	http://code.google.com/p/pharo/issues/detail?id=4583
Issue 4585:	Failing Test: uncategorized methods in MethodReference
	http://code.google.com/p/pharo/issues/detail?id=4585
Issue 4584:	Undeclared in #doTestDebuggerTempAccessWith:with:
	http://code.google.com/p/pharo/issues/detail?id=4584
Issue 4588:	Failing test: #testSizeInMemoryNormalClasses
	http://code.google.com/p/pharo/issues/detail?id=4588
Issue 4590:	Polymorph improvements
	http://code.google.com/p/pharo/issues/detail?id=4590'.
	self loadTogether: self script336 merge: false.
	self flushCaches.
! !
