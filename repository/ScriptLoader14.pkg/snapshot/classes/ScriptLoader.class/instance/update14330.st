
!ScriptLoader methodsFor: 'pharo - updates'!
update14330
	"self new update14330"
	self withUpdateLog: 'Issue 5291:	FSReference(Object)>>doesNotUnderstand: #asLowercase
	http://code.google.com/p/pharo/issues/detail?id=5291'.
	self loadTogether: self script591 merge: false.
	self flushCaches.
! !
