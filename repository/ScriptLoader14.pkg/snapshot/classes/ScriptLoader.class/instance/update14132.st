
!ScriptLoader methodsFor: 'pharo - updates'!
update14132
	"self new update14132"
	self withUpdateLog: 'Issue 4295:	Do not use the bytecode for #class
	http://code.google.com/p/pharo/issues/detail?id=4295'.
	self loadTogether: self script396 merge: false.
	Smalltalk recreateSpecialObjectsArray.
VariableNode initialize.
Compiler recompileAll.
	self flushCaches.
! !
