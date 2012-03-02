
!ScriptLoader methodsFor: 'pharo - updates'!
update14204
	"self new update14204"
	self withUpdateLog: '- fix falt browser.'.
	self loadTogether: self script467 merge: false.
	self flushCaches.
! !
