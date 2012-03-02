
!ScriptLoader methodsFor: 'pharo - updates'!
update14177
	"self new update14177"
	self withUpdateLog: 'Issue 4851:	We should integrate systemReporter
	http://code.google.com/p/pharo/issues/detail?id=485155'.
	self loadTogether: self script440 merge: false.
	self flushCaches.
! !
