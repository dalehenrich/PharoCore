
!ScriptLoader methodsFor: 'pharo - updates'!
update14090
	"self new update14090"
	self withUpdateLog: 'Issue 4632:	cleanup packages
	http://code.google.com/p/pharo/issues/detail?id=4632
Issue 4630:	Some fixes for shout
	http://code.google.com/p/pharo/issues/detail?id=4630
Issue 4628:	Nuking ImageSegment (Part II)
	http://code.google.com/p/pharo/issues/detail?id=4628'.
	self loadTogether: self script355 merge: false.
	ScriptLoader new deletePackage: 'FS-FileStream'.
ScriptLoader new deletePackage: 'FS-Tests'.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
