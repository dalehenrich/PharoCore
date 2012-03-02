
!ScriptLoader methodsFor: 'pharo - updates'!
update14308
	"self new update14308"
	self withUpdateLog: '-   Issue 5068:	move Transcript to its own package.'.
	self loadTogether: self script569 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
