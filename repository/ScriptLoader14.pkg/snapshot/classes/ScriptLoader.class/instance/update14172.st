
!ScriptLoader methodsFor: 'pharo - updates'!
update14172
	"self new update14172"
	self withUpdateLog: 'Issue 4862:	HashedCollection rehashAll crashes the VM
	http://code.google.com/p/pharo/issues/detail?id=4862'.
	self loadTogether: self script435 merge: false.
	self flushCaches.
! !
