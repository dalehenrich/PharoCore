
!ScriptLoader methodsFor: 'pharo - updates'!
update14059
	"self new update14059"
	self withUpdateLog: '- Issue 4546:	Time Profiler copy. Second fix.
		http://code.google.com/p/pharo/issues/detail?id=4546
- Issue 4543:	Wrong calculated size of objects in memory.
		http://code.google.com/p/pharo/issues/detail?id=4543'.
	self loadTogether: self script324 merge: false.
	self flushCaches.
! !
