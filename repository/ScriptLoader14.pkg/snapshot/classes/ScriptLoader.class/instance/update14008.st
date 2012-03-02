
!ScriptLoader methodsFor: 'pharo - updates'!
update14008
	"self new update14008"
	self withUpdateLog: 'Issue 4445:	shrinkToKernel later ChangeSets cleanup
	http://code.google.com/p/pharo/issues/detail?id=4445
Issue 4436:	HandMorph mouseTrailFrom: problem
	http://code.google.com/p/pharo/issues/detail?id=4436
Issue 4443:	StrikeFontSet isSynthetic
	http://code.google.com/p/pharo/issues/detail?id=4443'.
	self loadTogether: self script273 merge: false.
	self flushCaches.
! !
