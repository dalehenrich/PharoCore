
!ScriptLoader methodsFor: 'pharo - updates'!
update14106
	"self new update14106"
	self withUpdateLog: '- Ring enhancements'.
	self loadTogether: self script370 merge: false.
	self flushCaches.
! !
