
!ScriptLoader methodsFor: 'pharo - updates'!
update14310
	"self new update14310"
	self withUpdateLog: '- Issue 4795:	rename is not working in FS. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=4795'.
	self loadTogether: self script571 merge: false.
	self flushCaches.
! !
