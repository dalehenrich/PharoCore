
!ScriptLoader methodsFor: 'pharo - updates'!
update14064
	"self new update14064"
	self withUpdateLog: 'Issue 4564:	Scrollbar and slider changes broke Combox.'.
	self loadTogether: self script329 merge: false.
	self flushCaches.
! !
