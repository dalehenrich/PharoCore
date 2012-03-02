
!ScriptLoader methodsFor: 'pharo - updates'!
update14152
	"self new update14152"
	self withUpdateLog: '- Issue 4824:	New tests for CompiledMethod equality. 
		Thanks Mariano Martinez-Peck. 
		http://code.google.com/p/pharo/issues/detail?id=4824
		
-  Issue 4822:	Improving TickList. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4822
	
- Issue 4823:	Make MCSliceMaker use TickList. Thanks Benjamin van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4823'.
	self loadTogether: self script416 merge: false.
	self flushCaches.
! !
