
!ScriptLoader methodsFor: 'pharo - updates'!
update14005
	"self new update14005"
	self withUpdateLog: 'Issue 4326:	Connection timeout problem
	http://code.google.com/p/pharo/issues/detail?id=4326
Issue 4417:	Zinc does not honour network proxy configuration
	http://code.google.com/p/pharo/issues/detail?id=4417
Issue 4428:	New mechanism for Zinc servers start/stop handling after system startUp/shutDown
	http://code.google.com/p/pharo/issues/detail?id=4428'.
	self loadTogether: self script270 merge: false.
	self flushCaches.
! !
