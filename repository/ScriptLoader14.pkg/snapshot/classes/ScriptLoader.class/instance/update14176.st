
!ScriptLoader methodsFor: 'pharo - updates'!
update14176
	"self new update14176"
	self withUpdateLog: 'Issue 4855:	Add warning handling for tests
	http://code.google.com/p/pharo/issues/detail?id=4855'.
	self loadTogether: self script439 merge: false.
	self flushCaches.
! !
