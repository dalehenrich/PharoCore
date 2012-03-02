
!ScriptLoader methodsFor: 'pharo - updates'!
update14004
	"self new update14004"
	self withUpdateLog: 'Issue 4089:	ScriptManager has the same icon as Transcript
	http://code.google.com/p/pharo/issues/detail?id=4089
Issue 4427:	FlatMessageListBrowser add browse users
	http://code.google.com/p/pharo/issues/detail?id=4427
Issue 4328:	Transcript: 5) Update problem when evaluating 1 to: ...
	http://code.google.com/p/pharo/issues/detail?id=4328'.
	self loadTogether: self script269 merge: false.
	self flushCaches.
! !
