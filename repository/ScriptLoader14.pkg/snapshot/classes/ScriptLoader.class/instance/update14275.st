
!ScriptLoader methodsFor: 'pharo - updates'!
update14275
	"self new update14275"
	self withUpdateLog: '-  Issue 5109:	Gofer >> #url:username:password: does not support file-based urls. Thanks Camillo Bruni and Sven van Caekenberghe.
	http://code.google.com/p/pharo/issues/detail?id=5109'.
	self loadTogether: self script538 merge: false.
	self flushCaches.
! !
