
!ScriptLoader methodsFor: 'pharo - updates'!
update14082
	"self new update14082"
	self withUpdateLog: '- Load FS

'.
	self loadTogether: self script347 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
! !
