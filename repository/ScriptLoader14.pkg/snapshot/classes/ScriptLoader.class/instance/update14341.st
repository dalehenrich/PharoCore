
!ScriptLoader methodsFor: 'pharo - updates'!
update14341
	"self new update14341"
	self withUpdateLog: 'Issue 5329:	 ToolsTest-PointerFinder failing tests
	http://code.google.com/p/pharo/issues/detail?id=5329
Issue 5334:	new method in AstractTool
	http://code.google.com/p/pharo/issues/detail?id=5334
Issue 5333:	Improve LazyMultiColumnMorph
	http://code.google.com/p/pharo/issues/detail?id=5333'.
	self loadTogether: self script602 merge: false.
	self flushCaches.
! !
