
!ScriptLoader methodsFor: 'pharo - updates'!
update14312
	"self new update14312"
	self withUpdateLog: '- Issue 4602: Fixes and improvements on MC. Thanks Camillo Bruni.  http://code.google.com/p/pharo/issues/detail?id=4602'.
	self loadTogether: self script573 merge: false.
	self flushCaches.
! !
