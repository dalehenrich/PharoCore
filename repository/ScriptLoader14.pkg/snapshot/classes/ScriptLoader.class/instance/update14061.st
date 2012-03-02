
!ScriptLoader methodsFor: 'pharo - updates'!
update14061
	"self new update14061"
	self withUpdateLog: '- Issue 4555: 	Fix SUnit to prevent forked process from escaping to debugger'.
	self loadTogether: self script326 merge: false.
	self flushCaches.
! !
