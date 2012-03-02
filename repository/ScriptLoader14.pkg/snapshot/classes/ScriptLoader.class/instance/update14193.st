
!ScriptLoader methodsFor: 'pharo - updates'!
update14193
	"self new update14193"
	self withUpdateLog: 'move MixedCurveMorph to deprecated'.
	self loadTogether: self script456 merge: false.
	self flushCaches.
! !
