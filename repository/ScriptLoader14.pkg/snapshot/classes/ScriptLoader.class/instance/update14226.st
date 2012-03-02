
!ScriptLoader methodsFor: 'pharo - updates'!
update14226
	"self new update14226"
	self withUpdateLog: 'Issue 4993:	Failing Test: ZnNeoClientTests
	http://code.google.com/p/pharo/issues/detail?id=4993
Issue 4971:	adding author to compiledMethod and authors to class.
	http://code.google.com/p/pharo/issues/detail?id=4971'.
	self loadTogether: self script489 merge: false.
	self flushCaches.
! !
