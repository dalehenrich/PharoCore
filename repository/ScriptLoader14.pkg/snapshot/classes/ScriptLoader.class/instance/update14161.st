
!ScriptLoader methodsFor: 'pharo - updates'!
update14161
	"self new update14161"
	self withUpdateLog: 'Issue 4848:	Fixing comment display in changeset
	http://code.google.com/p/pharo/issues/detail?id=4848'.
	self loadTogether: self script425 merge: false.
	self flushCaches.
! !
