
!ScriptLoader methodsFor: 'pharo - updates'!
update14003
	"self new update14003"
	self withUpdateLog: 'Issue 4425:	Finder cant find #first:
	http://code.google.com/p/pharo/issues/detail?id=4425
Issue 4427:	FlatMessageListBrowser add browse users
	http://code.google.com/p/pharo/issues/detail?id=4427'.
	self loadTogether: self script268 merge: false.
	self flushCaches.
! !
