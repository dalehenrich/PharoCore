
!ScriptLoader methodsFor: 'pharo - updates'!
update14018
	"self new update14018"
	self withUpdateLog: 'Issue 4464:	remove MaskedTextMorph
	http://code.google.com/p/pharo/issues/detail?id=4464
Issue 4462:	Move AlphaInfiniteForm to same category as InfiniteForm
	http://code.google.com/p/pharo/issues/detail?id=4462
Issue 4463:	unload deprecated 12
	http://code.google.com/p/pharo/issues/detail?id=4463'.
	self loadTogether: self script283 merge: false.
	ScriptLoader new deletePackage: 'Deprecated12'.
ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
