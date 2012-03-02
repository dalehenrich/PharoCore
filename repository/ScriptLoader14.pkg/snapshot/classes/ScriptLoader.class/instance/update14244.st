
!ScriptLoader methodsFor: 'pharo - updates'!
update14244
	"self new update14244"
	self withUpdateLog: 'Issue 5048:	Move Transcript to Tools Package
	http://code.google.com/p/pharo/issues/detail?id=5048
Issue 5047:	Stream should not print its contents in printOn:
	http://code.google.com/p/pharo/issues/detail?id=5047
Issue 5053:	ZnChunkedReadStream doesNotUnderstand: #next:into:
	http://code.google.com/p/pharo/issues/detail?id=5053'.
	self loadTogether: self script507 merge: false.
	self flushCaches.
! !
