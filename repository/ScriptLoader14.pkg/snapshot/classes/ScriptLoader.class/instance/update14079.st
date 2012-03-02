
!ScriptLoader methodsFor: 'pharo - updates'!
update14079
	"self new update14079"
	self withUpdateLog: '-  Issue 4550:	methodSymbol is a bad name for selector.
	Couple more fixes'.
	self loadTogether: self script344 merge: false.
	self flushCaches.
! !
