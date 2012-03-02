
!ScriptLoader methodsFor: 'pharo - updates'!
update14309
	"self new update14309"
	self withUpdateLog: '- Issue 4877:	MC should properly initialize merged-in packages. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4877
	
- Issue 4536:	Filter out kernel message sends in the debugger.
	Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4536'.
	self loadTogether: self script570 merge: false.
	self flushCaches.
! !
