
!ScriptLoader methodsFor: 'pharo - updates'!
update14243
	"self new update14243"
	self withUpdateLog: 'Issue 5052:	#subclassResponsibility should not print the object but the class name
	http://code.google.com/p/pharo/issues/detail?id=5052
Issue 5050:	restart UIProcess in next postscript
	http://code.google.com/p/pharo/issues/detail?id=5050
Issue 5049:	Remove TestNewParagraphFix
	http://code.google.com/p/pharo/issues/detail?id=5049
Issue 5051:	[ENH]: Clean up Mail code
	http://code.google.com/p/pharo/issues/detail?id=5051
	
	
'.
	self loadTogether: self script506 merge: false.
	[MorphicUIManager new terminateUIProcess; spawnNewProcess] fork.
	self flushCaches.
! !
