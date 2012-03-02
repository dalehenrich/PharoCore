
!ScriptLoader methodsFor: 'pharo - updates'!
update14340
	"self new update14340"
	self withUpdateLog: 'Issue 4929:	#[ in a workspace raises an exception
	http://code.google.com/p/pharo/issues/detail?id=4929
Issue 5326:	New method in AbstractTool
	http://code.google.com/p/pharo/issues/detail?id=5326
Issue 5330:	PluggableListMorph little hack to speed it up a bit
	http://code.google.com/p/pharo/issues/detail?id=5330'.
	self loadTogether: self script601 merge: false.
	self flushCaches.
! !
