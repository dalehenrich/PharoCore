
!ScriptLoader methodsFor: 'pharo - updates'!
update14078
	"self new update14078"
	self withUpdateLog: '- add ensureCr for vmmaker compatibility to Transcript'.
	self loadTogether: self script343 merge: false.
	self flushCaches.
! !
