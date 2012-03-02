
!ScriptLoader methodsFor: 'pharo - updates'!
update14067
	"self new update14067"
	self withUpdateLog: 'Issue 4566:	SUnit: Fix for tagging expectedFailure using pragmas
	http://code.google.com/p/pharo/issues/detail?id=4566
Issue 4570:	adding bitString to SmallInteger
	http://code.google.com/p/pharo/issues/detail?id=4570
Issue 4561:	Monticello GUI is broken
	http://code.google.com/p/pharo/issues/detail?id=4561'.
	self loadTogether: self script332 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
