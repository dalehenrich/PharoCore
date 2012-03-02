
!ScriptLoader methodsFor: 'pharo - updates'!
update14307
	"self new update14307"
	self withUpdateLog: '-  Issue 5184:	Class search in browser breaks with non-expected regexes. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=5184
	'.
	self loadTogether: self script568 merge: false.
	self flushCaches.
! !
