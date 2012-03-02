
!ScriptLoader methodsFor: 'pharo - updates'!
update14257
	"self new update14257"
	self withUpdateLog: '-  Issue 5095:	Monticello snapshotting does lots of unnecessary screen updates. Thanks Lukas and Stef :)
	http://code.google.com/p/pharo/issues/detail?id=5095
	
- Issue 5083:	remove unused methods from SmartRefStream. Thanks Marcus Denker.
	http://code.google.com/p/pharo/issues/detail?id=5083'.
	self loadTogether: self script520 merge: false.
	self flushCaches.
! !
