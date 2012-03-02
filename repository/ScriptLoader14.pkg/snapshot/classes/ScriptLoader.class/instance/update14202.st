
!ScriptLoader methodsFor: 'pharo - updates'!
update14202
	"self new update14202"
	self withUpdateLog: '- Issue 4923:	halt: senders are fixed
	http://code.google.com/p/pharo/issues/detail?id=4923'.
	self loadTogether: self script465 merge: false.
	self flushCaches.
! !
