
!ScriptLoader methodsFor: 'pharo - updates'!
update14198
	"self new update14198"
	self withUpdateLog: '- better unsubscribe for SystemAnnouncer
- removing support for pre methodReference list.... so long time ago.'.
	self loadTogether: self script461 merge: false.
	self flushCaches.
! !
