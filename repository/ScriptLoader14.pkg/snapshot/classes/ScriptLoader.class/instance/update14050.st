
!ScriptLoader methodsFor: 'pharo - updates'!
update14050
	"self new update14050"
	self withUpdateLog: 'Preparation for Ring integration'.
	self loadTogether: self script315 merge: false.
	self flushCaches.
! !
