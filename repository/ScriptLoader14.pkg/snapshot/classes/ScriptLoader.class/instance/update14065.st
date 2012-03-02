
!ScriptLoader methodsFor: 'pharo - updates'!
update14065
	"self new update14065"
	self withUpdateLog: 'DeleteSunit package since it is overlapping with the other now.'.
	self loadTogether: self script330 merge: false.
	self deletePackage: 'SUnit'.
	self flushCaches.
! !
