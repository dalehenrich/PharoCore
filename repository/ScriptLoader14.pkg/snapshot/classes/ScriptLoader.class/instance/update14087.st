
!ScriptLoader methodsFor: 'pharo - updates'!
update14087
	"self new update14087"
	self withUpdateLog: 'Shout
'.
	self loadTogether: self script352 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
