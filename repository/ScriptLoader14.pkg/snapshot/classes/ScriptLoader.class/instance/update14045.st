
!ScriptLoader methodsFor: 'pharo - updates'!
update14045
	"self new update14045"
	self withUpdateLog: 'cleaning ring packages'.
	self loadTogether: self script310 merge: false.
	self deletePackage: 'Ring-Tests-Core-Containers'.
	self flushCaches.
! !
