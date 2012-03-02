
!ScriptLoader methodsFor: 'pharo - updates'!
update14178
	"self new update14178"
	self withUpdateLog: 'Issue 4662:	Two failures for FS
	http://code.google.com/p/pharo/issues/detail?id=4662
Issue 4837:	There continues to be a AnObsoleteChangedMessageSet
	http://code.google.com/p/pharo/issues/detail?id=4837
	'.
	self loadTogether: self script441 merge: false.
	self flushCaches.
! !
