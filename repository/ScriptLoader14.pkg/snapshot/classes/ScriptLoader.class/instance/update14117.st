
!ScriptLoader methodsFor: 'pharo - updates'!
update14117
	"self new update14117"
	self unloadPackage: 'Deprecated13'.
	self withUpdateLog: '- clean tool registry API.'.
	self loadTogether: self script381 merge: false.
	self flushCaches.
! !
