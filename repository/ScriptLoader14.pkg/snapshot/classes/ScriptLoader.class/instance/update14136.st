
!ScriptLoader methodsFor: 'pharo - updates'!
update14136
	"self new update14136"
	self withUpdateLog: 'Issue 4793:	Minor fix on FlatMessageListBrowser
	http://code.google.com/p/pharo/issues/detail?id=4793
Issue 4790:	Fix the Drag and drop in multi selection list
	http://code.google.com/p/pharo/issues/detail?id=4790
Issue 4788:	Dont use PluggaleListMorphOfMany anymore
	http://code.google.com/p/pharo/issues/detail?id=4788'.
	self loadTogether: self script400 merge: false.
	self flushCaches.
! !
