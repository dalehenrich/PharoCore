
!ScriptLoader methodsFor: 'pharo - updates'!
update14083
	"self new update14083"
	ScriptLoader new addHomeRepositoryToAllPackages.
	self withUpdateLog: '- Load Collections-Aritmetic
- Issue 4577:	RecentMessageSet is not referenced anymore
	http://code.google.com/p/pharo/issues/detail?id=4577

'.
	self loadTogether: self script348 merge: false.
	self addHomeRepositoryToAllPackages.
	self flushCaches.
! !
