
!ScriptLoader methodsFor: 'pharo - updates'!
update14190
	"self new update14190"
	self withUpdateLog: 'update UpdateStreamer to use new version of Zn'.
	self loadTogether: self script453 merge: false.
	self flushCaches.
! !
