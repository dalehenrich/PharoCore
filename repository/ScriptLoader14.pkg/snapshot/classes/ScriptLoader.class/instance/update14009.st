
!ScriptLoader methodsFor: 'pharo - updates'!
update14009
	"self new update14009"
	self withUpdateLog: '-  Issue 4439:	Allow cherry-picking when merging. Thanks Igor Stasenko.
	http://code.google.com/p/pharo/issues/detail?id=4439'.
	self loadTogether: self script274 merge: false.
	self flushCaches.
! !
