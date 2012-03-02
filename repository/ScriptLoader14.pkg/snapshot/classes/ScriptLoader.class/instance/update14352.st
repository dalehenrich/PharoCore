
!ScriptLoader methodsFor: 'pharo - updates'!
update14352
	"self new update14352"
	self withUpdateLog: 'Issue 5366:	highlightError create a text with too long runs...
	http://code.google.com/p/pharo/issues/detail?id=5366
	
Issue 5310:	Ensure registration symmetry in ExternalSemaphoreTable users	
	http://code.google.com/p/pharo/issues/detail?id=5310
		
Issue 2872:	should fix equality of DateAndTime
	http://code.google.com/p/pharo/issues/detail?id=2872
	'.
	self loadTogether: self script613 merge: false.
	self flushCaches.
! !
