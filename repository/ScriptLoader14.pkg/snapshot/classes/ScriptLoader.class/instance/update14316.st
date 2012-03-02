
!ScriptLoader methodsFor: 'pharo - updates'!
update14316
	"self new update14316"
	self withUpdateLog: 'Issue 5251:	Remove MCWorkingCopy from startup list
	http://code.google.com/p/pharo/issues/detail?id=5251
Issue 5167:	Fix weak finalization thrashing
	- improve interrupt behavior
	http://code.google.com/p/pharo/issues/detail?id=5167
Issue 5224:	move deprecated methods from category convenience-inspecting in ToolRegistry to deprecated14
	http://code.google.com/p/pharo/issues/detail?id=5224'.
	self loadTogether: self script577 merge: false.
	Smalltalk removeFromStartUpList: MCWorkingCopy.
	self flushCaches.
! !
