
!ScriptLoader methodsFor: 'pharo - updates'!
update14154
	"self new update14154"
	self withUpdateLog: 'Issue 4827:	Fix Obsolete Refs in ScriptLoader
	http://code.google.com/p/pharo/issues/detail?id=4827
Issue 4808:	remove LightDejaVuHolder package
	http://code.google.com/p/pharo/issues/detail?id=4808'.
	self loadTogether: self script418 merge: false.
	ScriptLoader new deletePackage: 'LightDejaVuHolder'.
	self flushCaches.
! !
