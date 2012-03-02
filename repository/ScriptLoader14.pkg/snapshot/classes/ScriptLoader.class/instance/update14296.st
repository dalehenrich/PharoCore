
!ScriptLoader methodsFor: 'pharo - updates'!
update14296
	"self new update14296"
	self withUpdateLog: '- actually add the code missed in the last update'.
	self loadTogether: self script559 merge: false.
	self flushCaches.
! !
