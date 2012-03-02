
!ScriptLoader methodsFor: 'pharo - updates'!
update14058
	"self new update14058"
	self withUpdateLog: ' Issue 4546:	Time Profiler copy. Thanks Alain Plantec and Hilaire Fernandez.'.
	self loadTogether: self script323 merge: false.
	self flushCaches.
! !
