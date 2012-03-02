
!ScriptLoader methodsFor: 'pharo - updates'!
update14006
	"self new update14006"
	self withUpdateLog: 'Issue 4429:	Undeclared TooklBuilder
	http://code.google.com/p/pharo/issues/detail?id=4429
Issue 4424:	Cant execute comment in Finder
	http://code.google.com/p/pharo/issues/detail?id=4424'.
	self loadTogether: self script271 merge: false.
	self flushCaches.
! !
