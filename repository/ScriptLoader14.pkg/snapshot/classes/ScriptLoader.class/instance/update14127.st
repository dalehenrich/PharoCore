
!ScriptLoader methodsFor: 'pharo - updates'!
update14127
	"self new update14127"
	self withUpdateLog: 'Issue 4775:	Announcement curtailing fails
	http://code.google.com/p/pharo/issues/detail?id=4775
Issue 4731:	ProtoObjects pointersTo methods in wrong protocol
	http://code.google.com/p/pharo/issues/detail?id=4731
Issue 4763:	Refactor in Debugger and MorphicUIManager
	http://code.google.com/p/pharo/issues/detail?id=4763'.
	self loadTogether: self script391 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.
! !
