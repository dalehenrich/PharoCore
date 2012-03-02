
!ScriptLoader methodsFor: 'pharo - updates'!
update14203
	"self new update14203"
	self withUpdateLog: '- Issue 4922:	duplicate logic in SystemChangeNotifier. Stef and Ben diving into the system... gloups :)
	http://code.google.com/p/pharo/issues/detail?id=4922'.
	self loadTogether: self script466 merge: false.
	self flushCaches.
! !
