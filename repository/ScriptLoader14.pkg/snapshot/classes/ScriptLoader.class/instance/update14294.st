
!ScriptLoader methodsFor: 'pharo - updates'!
update14294
	"self new update14294"
	self withUpdateLog: '- Issue 5168: TaskList switching raises exception. First Two.
	http://code.google.com/p/pharo/issues/detail?id=5168
'.
	self loadTogether: self script557 merge: false.
	self flushCaches.
! !
