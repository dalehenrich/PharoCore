
!ScriptLoader methodsFor: 'pharo - updates'!
update14124
	"self new update14124"
	self withUpdateLog: 'Issue 4613:	metacello default platform
	http://code.google.com/p/pharo/issues/detail?id=4613
Issue 4712:	move some Collections package to Kernel
	http://code.google.com/p/pharo/issues/detail?id=4712'.
	self loadTogether: self script388 merge: false.
	self flushCaches.
! !
