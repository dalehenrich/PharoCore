
!ScriptLoader methodsFor: 'pharo - updates'!
update14033
	"self new update14033"
	self addHomeRepositoryToAllPackages.
	self withUpdateLog: '- Adding Ring (after merging three packages). Thanks Veronica Uquillas Gomez'.
	self loadTogether: self script298 merge: false.
	self flushCaches.
! !
