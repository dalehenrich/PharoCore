
!ScriptLoader methodsFor: 'pharo - updates'!
update14214
	"self new update14214"
	self withUpdateLog: 'Issue 2230:	ArrayedCollection class>>newFromStream:
	http://code.google.com/p/pharo/issues/detail?id=2230
Issue 4945:	Weird Settings filtering
	http://code.google.com/p/pharo/issues/detail?id=4945
Issue 4696:	Rename Smalltalk>>garbageCollectAndReport and Smalltalk>>bytesLeftString
	http://code.google.com/p/pharo/issues/detail?id=4696'.
	self loadTogether: self script477 merge: false.
	self flushCaches.
! !
