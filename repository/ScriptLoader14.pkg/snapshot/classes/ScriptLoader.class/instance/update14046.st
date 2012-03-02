
!ScriptLoader methodsFor: 'pharo - updates'!
update14046
	"self new update14046"
	self addHomeRepositoryToAllPackages.
	self withUpdateLog: 'adding Ring-Tests-Containers'.
	self loadTogether: self script311 merge: false.
	self flushCaches.
! !
