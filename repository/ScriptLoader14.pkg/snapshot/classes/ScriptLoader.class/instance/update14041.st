
!ScriptLoader methodsFor: 'pharo - updates'!
update14041
	"self new update14041"
	self withUpdateLog: '- Issue 4480:	Cleaning Direct Compiler Reference.
	Thanks Jean-Baptiste Arnaud'.
	self loadTogether: self script306 merge: false.
	self flushCaches.
! !
