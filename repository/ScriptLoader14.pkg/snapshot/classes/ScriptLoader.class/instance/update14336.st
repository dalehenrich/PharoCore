
!ScriptLoader methodsFor: 'pharo - updates'!
update14336
	"self new update14336"
	self withUpdateLog: 'Issue 3248:	Bad error message for non existing changes file.
	http://code.google.com/p/pharo/issues/detail?id=3248
Issue 5267:	Monticello>>Add Repository>>squeaksource doesnt work
	http://code.google.com/p/pharo/issues/detail?id=5267
Issue 5255:	windows startup errors, in #14317
	http://code.google.com/p/pharo/issues/detail?id=5255
	l?id=5299'.
	self loadTogether: self script597 merge: false.
	self flushCaches.
! !
