
!ScriptLoader methodsFor: 'pharo - updates'!
update14052
	"self new update14052"
	self withUpdateLog: '-  Issue 4537:	Removing Canvas>>shadowColor & friends cleanup. Thanks Igor Stasenko.'.
	self loadTogether: self script317 merge: false.
	self flushCaches.
! !
