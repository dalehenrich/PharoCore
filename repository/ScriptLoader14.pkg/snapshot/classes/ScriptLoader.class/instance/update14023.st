
!ScriptLoader methodsFor: 'pharo - updates'!
update14023
	"self new update14023"
	self withUpdateLog: 'Issue 4457:	Polymorph-ToolBuilder package need to be removed
	http://code.google.com/p/pharo/issues/detail?id=4457
Issue 4479:	We should rename GLMUITheme into Pharo Theme
	http://code.google.com/p/pharo/issues/detail?id=4479'.
	self loadTogether: self script288 merge: false.
		ScriptLoader new deletePackage: 'Polymorph-ToolBuilder'.
	self flushCaches.
! !
