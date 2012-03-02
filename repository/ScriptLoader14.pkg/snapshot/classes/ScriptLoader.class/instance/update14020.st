
!ScriptLoader methodsFor: 'pharo - updates'!
update14020
	"self new update14020"
	self withUpdateLog: 'Issue 4467:	Transcript does not print
	http://code.google.com/p/pharo/issues/detail?id=4467
Issue 4470:	on:fork: re-entering multiple times fix
	http://code.google.com/p/pharo/issues/detail?id=4470
Issue 4466:	Undeclared in TabLabelMorph
	http://code.google.com/p/pharo/issues/detail?id=4466'.
	self loadTogether: self script285 merge: false.
	self flushCaches.
! !
