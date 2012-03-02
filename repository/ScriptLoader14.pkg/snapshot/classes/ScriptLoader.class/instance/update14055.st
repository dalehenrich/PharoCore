
!ScriptLoader methodsFor: 'pharo - updates'!
update14055
	"self new update14055"
	self withUpdateLog: '-  Issue 4535: automatically expand the context stack in the debugger when the last item is selected. Thanks Camillo Bruni..
	http://code.google.com/p/pharo/issues/detail?id=4535
	
- Issue 4541: UUIDs not so unique.  Thanks Torsten Bergmann
	http://code.google.com/p/pharo/issues/detail?id=4541
	
- Issue 4536: Filter out "kernel" message sends in the debugger. 
	http://code.google.com/p/pharo/issues/detail?id=4536'.
	self loadTogether: self script320 merge: false.
	self flushCaches.
! !
