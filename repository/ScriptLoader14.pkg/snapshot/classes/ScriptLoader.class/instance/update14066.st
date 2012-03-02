
!ScriptLoader methodsFor: 'pharo - updates'!
update14066
	"self new update14066"
	self withUpdateLog: '- reverting old method newUpdates for now.'.
	self loadTogether: self script331 merge: false.
	self flushCaches.
! !
