
!ScriptLoader methodsFor: 'pharo - updates'!
update14043
	"self new update14043"
	self addHomeRepositoryToAllPackages.
	self withUpdateLog: '- Adding ring container objects and fixing missing isRingObject.
	all tests green except one.'.
	self loadTogether: self script308 merge: false.
	self flushCaches.
! !
