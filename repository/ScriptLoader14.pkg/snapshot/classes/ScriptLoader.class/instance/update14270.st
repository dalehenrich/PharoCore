
!ScriptLoader methodsFor: 'pharo - updates'!
update14270
	"self new update14270"
	self withUpdateLog: '-  Issue 5114:	wrong dependencies in GoferLoad >> #addResolved:
		Thanks Camillo Bruni and Benjamin van Ryseghem.'.
	self loadTogether: self script533 merge: false.
	self flushCaches.
! !
