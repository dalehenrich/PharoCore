
!ScriptLoader methodsFor: 'pharo - updates'!
update14118
	"self new update14118"
	"RecentMessageSet initialize."
RecentMessageList resetUniqueInstance.
RecentMessageList stopNotifications.
.
	self withUpdateLog: 'Ring pass to remove Source Method reference'.
	self loadTogether: self script382 merge: false.
	Smalltalk garbageCollect.
Smalltalk garbageCollect.
Smalltalk garbageCollect.
Smalltalk garbageCollect.
Smalltalk garbageCollect.
RecentMessageList startUp.
.
	self flushCaches.
! !
