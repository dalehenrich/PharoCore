
!ScriptLoader methodsFor: 'pharo - updates'!
update14265
	"self new update14265"
	self withUpdateLog: '- Issue 5124:	Chronology Printing/Accessing Efficiency Improvements. Thanks Sven van Caekenberghe.
	http://code.google.com/p/pharo/issues/detail?id=5124
- Issue 5067:	Make package cache location changeable (first part).
	Thanks Mariano Martinez-Peck.
	http://code.google.com/p/pharo/issues/detail?id=5067.
- Issue 4866:	NonInteractiveTranscript
	Thanks Sven van Caekenberghe.
	http://code.google.com/p/pharo/issues/detail?id=4866'.
	self loadTogether: self script528 merge: false.
	self flushCaches.
! !
