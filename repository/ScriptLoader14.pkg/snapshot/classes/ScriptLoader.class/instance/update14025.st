
!ScriptLoader methodsFor: 'pharo - updates'!
update14025
	"self new update14025"
	self withUpdateLog: 'Issue 4492:	move class CornerRounder close to users
	http://code.google.com/p/pharo/issues/detail?id=4492
Issue 4494:	remove PNMReadWriter
	http://code.google.com/p/pharo/issues/detail?id=4494
Issue 4490:	Deprecated12 code is still there
	http://code.google.com/p/pharo/issues/detail?id=4490'.
	self loadTogether: self script290 merge: false.
	self flushCaches.
! !
