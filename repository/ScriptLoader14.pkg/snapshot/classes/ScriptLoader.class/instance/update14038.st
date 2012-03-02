
!ScriptLoader methodsFor: 'pharo - updates'!
update14038
	"self new update14038"
	self withUpdateLog: '- Issue 4413:	Better error message for MC. Thanks Camillo Bruni and FBS.

- Issue 4507:	MC Commit. Thanks Camillo Bruni.'.
	self loadTogether: self script303 merge: false.
	self flushCaches.
! !
