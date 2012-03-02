
!ScriptLoader methodsFor: 'pharo - updates'!
update14149
	"self new update14149"
	self withUpdateLog: '- Post clean of MessageSet deprecation. 

- Issue 4811:	Restraint the modal of ClassSearch. Thanks Benjmain van Ryseghem.
	http://code.google.com/p/pharo/issues/detail?id=4811

'.
	self loadTogether: self script413 merge: false.
	self flushCaches.
! !
