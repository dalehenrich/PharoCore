
!ScriptLoader methodsFor: 'pharo - updates'!
update14182
	"self new update14182"
	self withUpdateLog: 'Issue 4768:	Code loading/compilation followed by starting a TCP server results in a hang
	http://code.google.com/p/pharo/issues/detail?id=4768'.
	self loadTogether: self script445 merge: false.
	self flushCaches.
! !
