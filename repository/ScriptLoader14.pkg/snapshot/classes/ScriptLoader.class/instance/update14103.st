
!ScriptLoader methodsFor: 'pharo - updates'!
update14103
	"self new update14103"
	self withUpdateLog: '- Issue 4671:	AbstractTool modified. '.
	self loadTogether: self script367 merge: false.
	self flushCaches.
! !
