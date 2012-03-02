
!ScriptLoader methodsFor: 'pharo - updates'!
update14049
	"self new update14049"
	self withUpdateLog: 'Merging latest ring core fixes + tests with veronica.'.
	self loadTogether: self script314 merge: false.
	self flushCaches.
! !
