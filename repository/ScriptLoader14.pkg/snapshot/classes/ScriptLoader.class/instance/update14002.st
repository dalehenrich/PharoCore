
!ScriptLoader methodsFor: 'pharo - updates'!
update14002
	"self new update14002"
	self withUpdateLog: '- remove ToolBuilder'.
	self loadTogether: self script267 merge: false.
	(MCPackage named: 'ToolBuilder-Morphic') unload.
	(MCPackage named: 'ToolBuilder-Kernel') unload.
	self flushCaches.
! !
