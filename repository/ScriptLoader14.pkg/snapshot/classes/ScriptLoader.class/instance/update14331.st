
!ScriptLoader methodsFor: 'pharo - updates'!
update14331
	"self new update14331"
	self withUpdateLog: 'Issue 5291:	FSReference(Object)>>doesNotUnderstand: #asLowercase
	http://code.google.com/p/pharo/issues/detail?id=5291
Issue 5294:	Remove the Send bug report by Mail from Debugger
	http://code.google.com/p/pharo/issues/detail?id=5294'.
	self loadTogether: self script592 merge: false.
	self flushCaches.
! !
