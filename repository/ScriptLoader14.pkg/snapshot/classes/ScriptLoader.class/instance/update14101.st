
!ScriptLoader methodsFor: 'pharo - updates'!
update14101
	"self new update14101"
	self withUpdateLog: 'Issue 4669:	Deprecation in MessageTally
		http://code.google.com/p/pharo/issues/detail?id=4669'.
	self loadTogether: self script365 merge: false.
	self flushCaches.
! !
