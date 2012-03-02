
!ScriptLoader methodsFor: 'pharo - updates'!
update14142
	"self new update14142"
	self withUpdateLog: 'Issue 4798:	Improved CompiledMethod>>isAbstract
	Issue 4798:	Improved CompiledMethod>>isAbstract
- do a #cleanUpForRelease	'.
	self loadTogether: self script406 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
