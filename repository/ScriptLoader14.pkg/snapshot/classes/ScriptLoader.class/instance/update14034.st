
!ScriptLoader methodsFor: 'pharo - updates'!
update14034
	"self new update14034"
	self withUpdateLog: '- Issue 4469:	Clean up old HTTP Code. Thanks Sven. '.
	self loadTogether: self script299 merge: false.
	self flushCaches.
! !
