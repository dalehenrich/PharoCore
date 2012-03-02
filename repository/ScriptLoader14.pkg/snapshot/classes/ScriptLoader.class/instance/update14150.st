
!ScriptLoader methodsFor: 'pharo - updates'!
update14150
	"self new update14150"
	"SystemChangeNotifier uniqueInstance noMoreNotificationsFor:  RecentMessageSet."
	self withUpdateLog: '- Issue 4820:	Cleaning MessageSet hierarchy
	http://code.google.com/p/pharo/issues/detail?id=4820
	removed timeProfilerBrowser, RecentMessageSet, ChangedMessageSet and clean the rest'.
	self loadTogether: self script414 merge: false.
	Smalltalk tools register: FlatMessageListBrowser as:#messageList.
	self flushCaches.
! !
