
!ScriptLoader methodsFor: 'pharo - updates'!
update14089
	"self new update14089"
	self withUpdateLog: '- FS update'.
	self loadTogether: self script354 merge: false.
	self flushCaches.
! !
