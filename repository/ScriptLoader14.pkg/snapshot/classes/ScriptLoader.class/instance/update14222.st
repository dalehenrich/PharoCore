
!ScriptLoader methodsFor: 'pharo - updates'!
update14222
	"self new update14222"
	self withUpdateLog: 'Issue 4955:	Improve behavior of MorphTreeMorph when left key is pressed
	http://code.google.com/p/pharo/issues/detail?id=4955
	
Issue 4939:	Failing Tests: ClosureCompilerTest
	http://code.google.com/p/pharo/issues/detail?id=4939'.
	self loadTogether: self script485 merge: false.
	self flushCaches.
! !
