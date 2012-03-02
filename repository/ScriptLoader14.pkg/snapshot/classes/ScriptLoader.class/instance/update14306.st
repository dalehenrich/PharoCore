
!ScriptLoader methodsFor: 'pharo - updates'!
update14306
	"self new update14306"
	self withUpdateLog: '- Issue 4617:	More error tolerant startup. Thanks Camillo Bruni and Igor Stasenko.
	http://code.google.com/p/pharo/issues/detail?id=4617
	'.
	self loadTogether: self script567 merge: false.
	self flushCaches.
! !
