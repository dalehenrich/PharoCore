
!ScriptLoader methodsFor: 'pharo - updates'!
update14135
	"self new update14135"
	self withUpdateLog: 'Issue 4596:	WeakOrderedColllection array is replaced by an Array instead of a WeakArray
	http://code.google.com/p/pharo/issues/detail?id=4596
	
Part II (revert makeRoomAtFirst/Last to use grow again)'.
	self loadTogether: self script399 merge: false.
	self flushCaches.
! !
