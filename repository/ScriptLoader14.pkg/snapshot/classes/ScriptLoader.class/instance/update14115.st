
!ScriptLoader methodsFor: 'pharo - updates'!
update14115
	"self new update14115"
	self withUpdateLog: '- Ring enhancements. Thanks Veronica Uquillas-Gomez and Benjamin van Ryseghem'.
	self loadTogether: self script379 merge: false.
	self flushCaches.
! !
