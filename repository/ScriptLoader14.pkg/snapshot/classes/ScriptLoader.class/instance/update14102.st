
!ScriptLoader methodsFor: 'pharo - updates'!
update14102
	"self new update14102"
	self withUpdateLog: 'ss3 migration third try'.
	self loadTogether: self script366 merge: false.
	self cleanRepositories.
	self flushCaches.
! !
