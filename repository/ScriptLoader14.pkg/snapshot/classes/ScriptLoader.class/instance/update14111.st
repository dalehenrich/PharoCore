
!ScriptLoader methodsFor: 'pharo - updates'!
update14111
	"self new update14111"
	self withUpdateLog: '- Issue 4609:	Syntax highlighting broken. Thanks Alain Plantec and Benjmain van Ryseghem'.
	self loadTogether: self script375 merge: false.
	self flushCaches.
! !
